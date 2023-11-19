/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
//Object 'Validator'

function Validator(options) {
    
    function getParent(element, selector) {
        while (element.parentElement) {
            if (element.parentElement.matches(selector)) {
                return element.parentElement;
            }
            element = element.parentElement;
        }
    }
    
    var selectorRules = {};

    //Hàm thực hiện validate
    function validate(inputElement, rule) {
        var erroElement = getParent(inputElement, options.formGroupSelector).querySelector(options.erroSelector);
        var errorMessage;
        
        //Lấy ra các rule của selector
        var rules = selectorRules[rule.selector];
        
        //Lặp qua từng rule và kiểm tra
        //Nếu có lỗi thì dừng việc kiểm tra
        for (var i = 0; i < rules.length; ++i) {
            switch (inputElement.type){
                case 'checkbox':
                    errorMessage = rules[i](
                            formElement.querySelector(rule.selector + ':checked')
                    );
                    break;
                default:
                    errorMessage = rules[i](inputElement.value);
            }
            
            if (errorMessage) break;
        }

        if (errorMessage) {
            erroElement.innerText = errorMessage;
            getParent(inputElement, options.formGroupSelector).classList.add('invalid');
        } else {
            erroElement.innerText = '';
            getParent(inputElement, options.formGroupSelector).classList.remove('invalid');
        }
        
        return !errorMessage;
    };

    //Lấy element của form cần validate
    var formElement = document.querySelector(options.form);

    if (formElement) {
        
        //Khi submit form
        formElement.onsubmit = function (e) {
            e.preventDefault();
            
            var isFormValid = true;
            
            //Lặp qua từng rule và validate
            options.rules.forEach(function (rule) {
                var inputElement = formElement.querySelector(rule.selector);
                var isValid = validate(inputElement, rule);
                if (!isValid){
                    isFormValid = false;
                }
            });
            
            if (isFormValid){
                formElement.submit();
            }
        }
        
        //Lặp qua mỗi rule và xử lý (lắng nghe sự kiện blur, input,...)
        options.rules.forEach(function (rule) {
            
            //Lưu lại các rule cho mỗi input
            if (Array.isArray(selectorRules[rule.selector])){
                selectorRules[rule.selector].push(rule.test);
            } else {
                selectorRules[rule.selector] = [rule.test];
            }
                     
            var inputElements = formElement.querySelectorAll(rule.selector);
            
            Array.from(inputElements).forEach(function (inputElement) {
                //Xử lí trường hợp blur khỏi input
                inputElement.onblur = function () {
                    validate(inputElement, rule);
                }

                //Xử lí trường hợp người dùng nhập vào input
                inputElement.oninput = function () {
                    var erroElement = getParent(inputElement, options.formGroupSelector).querySelector(options.erroSelector);
                    erroElement.innerText = '';
                    getParent(inputElement, options.formGroupSelector).classList.remove('invalid');
                }
            });
        });
    }
}

//Rules definition

Validator.isRequired = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            return value ? undefined : message || 'Please enter this field!';
        }
    };
}

Validator.isName = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^\s*([A-Za-z]{1,}([\.,] |[-']| )?)+[A-Za-z]+\.?\s*$/;
            return regex.test(value) ? undefined : message || 'This field must be name!';
        }
    };
}

Validator.isNameProduct = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^[A-Za-z0-9\s]+$/;
            return regex.test(value) ? undefined : message || 'This field must be product name!';
        }
    };
}

Validator.isEmail = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value) ? undefined : message || 'This field must be email!';
        }
    };
}

Validator.isNumber = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^[+]*[(]{0,1}[0-9]{1,3}[)]{0,1}[-\s\./0-9]*$/g;
            return regex.test(value) ? undefined : message || 'This field must be number!';
        }
    };
}

Validator.minLength = function (selector, min, message) {
    return {
        selector: selector,
        test: function (value) {
            return value.length >= min ? undefined : message || `Please enter a minimum of ${min} characters!`;
        }
    };
}

Validator.isValidLength = function (selector, validLenght, message) {
    return {
        selector: selector,
        test: function (value) {
            return value.length === validLenght ? undefined : message || `Please enter exactly ${validLenght} characters!`;
        }
    };
}

Validator.isConfirmed = function (selector, getConfirmValue, message) {
    return {
        selector: selector,
        test: function (value) {
            return value === getConfirmValue() ? undefined : message || 'The value entered is incorrect!';
        }
    };
}

Validator.isPositive = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            // Check if the value is greater than zero
            return (parseFloat(value) > 0) ? undefined : message || 'Please enter a positive value!';
        }
    };
}