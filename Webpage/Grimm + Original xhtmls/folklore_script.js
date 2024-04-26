function init() {
    //loadBackground = document.body.style.background-color
    var boxes = document.getElementsByTagName('input')
    for (var i = 0; i < boxes.length; i++) {
        boxes[i].addEventListener('click', toggleHighlight, false);
        boxes[i].addEventListener('click', toggleHover, false);
    }
}

           function toggleHighlight() {
    var device = this.value;
    switch (device) {
        case 'depiction_beauty': {
            var depiction_beauty = document.querySelectorAll('.depiction_beauty');
            for (var i = 0; i < depiction_beauty.length; i++) {
                depiction_beauty[i].classList.toggle('on');
            };
        };
        break;
        case 'depiction_innocent': {
            var depiction_innocent = document.querySelectorAll('.depiction_innocent');
            for (var i = 0; i < depiction_innocent.length; i++) {
                depiction_innocent[i].classList.toggle('on');
            };
        };
        break;
        case 'depiction_naivity': {
            var depiction_naivity = document.querySelectorAll('.depiction_naivity');
            for (var i = 0; i < depiction_naivity.length; i++) {
                depiction_naivity[i].classList.toggle('on');
            };
        };                  
              break;
        case 'depiction_maternal': {
            var depiction_maternal = document.querySelectorAll('.depiction_maternal');
            for (var i = 0; i < mdepiction_maternal.length; i++) {
                depiction_maternal[i].classList.toggle('on');
            };
        };
        
        break;
        case 'depiction_emotional': {
            var depiction_emotional = document.querySelectorAll('.depiction_emotional');
            for (var i = 0; i < depiction_emotional.length; i++) {
                depiction_emotional[i].classList.toggle('on');
            };
        };
        break;
        case 'depiction_clever': {
            var depiction_clever = document.querySelectorAll('.depiction_clever');
            for (var i = 0; i < depiction_clever.length; i++) {
                depiction_clever[i].classList.toggle('on');
            };
        };                   
                              
                              
           break;
        case 'depiction_secluded': {
            var depiction_secluded = document.querySelectorAll('.depiction_secluded');
            for (var i = 0; i < depiction_secluded.length; i++) {
                depiction_secluded[i].classList.toggle('on');
            };
        };
        break;
        case 'depiction_protective': {
            var depiction_protective = document.querySelectorAll('.depiction_protective');
            for (var i = 0; i < depiction_protective.length; i++) {
                depiction_protective[i].classList.toggle('on');
            };
        };
        break;
        case 'depiction_brave': {
            var depiction_brave = document.querySelectorAll('.depiction_brave');
            for (var i = 0; i < depiction_brave.length; i++) {
                depiction_brave[i].classList.toggle('on');
            };
        };
      
      break;
        case 'depiction_domesticity': {
            var depiction_domesticity = document.querySelectorAll('.depiction_domesticity');
            for (var i = 0; i < depiction_domesticity.length; i++) {
                depiction_domesticity[i].classList.toggle('on');
            };
        };
        break;
        case 'chargender_female': {
            var chargender_female = document.querySelectorAll('.chargender_female');
            for (var i = 0; i < chargender_female.length; i++) {
                chargender_female[i].classList.toggle('on');
            };
        };
        break;
        case 'chargender_male': {
            var chargender_male = document.querySelectorAll('.chargender_male');
            for (var i = 0; i < chargender_male.length; i++) {
                chargender_male[i].classList.toggle('on');
            };
        };
      
      
      break;
        case 'age_young': {
            var age_young = document.querySelectorAll('.age_young');
            for (var i = 0; i < age_young.length; i++) {
                age_young[i].classList.toggle('on');
            };
        };
        break;
        case 'age_old': {
            var age_old = document.querySelectorAll('.age_old');
            for (var i = 0; i < age_old.length; i++) {
                age_old[i].classList.toggle('on');
            };
        };
        break;
        case 'chartype_physical': {
            var chartype_physical = document.querySelectorAll('.chartype_physical');
            for (var i = 0; i < chartype_physical.length; i++) {
                chartype_physical[i].classList.toggle('on');
            };
        };
      
      
      break;
        case 'chartype_nonphysical': {
            var chartype_nonphysical = document.querySelectorAll('.chartype_nonphysical');
            for (var i = 0; i < chartype_nonphysical.length; i++) {
                chartype_nonphysical[i].classList.toggle('on');
            };
        };
        break;
        case 'autotype_controlled': {
            var autotype_controlled = document.querySelectorAll('.autotype_controlled');
            for (var i = 0; i < autotype_controlled.length; i++) {
                autotype_controlled[i].classList.toggle('on');
            };
        };
        break;
        case 'autotype_free': {
            var autotype_free = document.querySelectorAll('.autotype_free');
            for (var i = 0; i < autotype_free.length; i++) {
                autotype_free[i].classList.toggle('on');
            };
        };
        
         break;
        case 'level_male_savior': {
            var level_male_savior = document.querySelectorAll('.level_male_savior');
            for (var i = 0; i < level_male_savior.length; i++) {
                level_male_savior[i].classList.toggle('on');
            };
        };
        
        break;
        case 'level_damsel': {
            var level_damsel = document.querySelectorAll('.level_damsel');
            for (var i = 0; i < level_damsel.length; i++) {
                level_damsel[i].classList.toggle('on');
            };
        };
        break;
        case 'level_evil': {
            var level_evil = document.querySelectorAll('.level_evil');
            for (var i = 0; i < level_evil.length; i++) {
                level_evil[i].classList.toggle('on');
            };
        };
        
         break;
        case 'level_religious': {
            var level_religious = document.querySelectorAll('.level_religious');
            for (var i = 0; i < level_religious.length; i++) {
                level_religious[i].classList.toggle('on');
            };
        };
        break;
        case 'level_heroine': {
            var level_heroine = document.querySelectorAll('.level_heroine');
            for (var i = 0; i < level_heroine.length; i++) {
                level_heroine[i].classList.toggle('on');
            };
        };
       
       break;
        case 'level_societal_expectations': {
            var level_societal_expectations = document.querySelectorAll('.level_societal_expectations');
            for (var i = 0; i < level_societal_expectations.length; i++) {
                level_societal_expectations[i].classList.toggle('on');
            };
        };
        
         break;
        case 'autogender_female': {
            var autogender_female = document.querySelectorAll('.autogender_female');
            for (var i = 0; i < autogender_female.length; i++) {
                autogender_female[i].classList.toggle('on');
            };
        };
       
       break;
        case 'autogender_male': {
            var autogender_male = document.querySelectorAll('.autogender_male');
            for (var i = 0; i < autogender_male.length; i++) {
                autogender_male[i].classList.toggle('on');
            };
        };
        break;
        case 'cause_competition': {
            var cause_competition = document.querySelectorAll('.cause_competition');
            for (var i = 0; i < cause_competition.length; i++) {
                cause_competition[i].classList.toggle('on');
            };
        };
      
       break;
        case 'cause_jealousy': {
            var cause_jealousy = document.querySelectorAll('.cause_jealousy');
            for (var i = 0; i < cause_jealousy.length; i++) {
                cause_jealousy[i].classList.toggle('on');
            };
        };
        break;
        case 'cause_revenge': {
            var cause_revenge = document.querySelectorAll('.cause_revenge');
            for (var i = 0; i < cause_revenge.length; i++) {
                cause_revenge[i].classList.toggle('on');
            };
        };
        break;
        case 'cause_unspecified': {
            var cause_unspecified = document.querySelectorAll('.cause_unspecified');
            for (var i = 0; i < cause_unspecified.length; i++) {
                cause_unspecified[i].classList.toggle('on');
            };
        };
      
       break;
        case 'cause_sex': {
            var cause_sex = document.querySelectorAll('.cause_sex');
            for (var i = 0; i < cause_sex.length; i++) {
                cause_sex[i].classList.toggle('on');
            };
        };
        break;
        case 'cause_power': {
            var cause_power = document.querySelectorAll('.cause_power');
            for (var i = 0; i < cause_power.length; i++) {
                cause_power[i].classList.toggle('on');
            };
        };
        break;
        case 'cause_manipulation': {
            var cause_manipulation = document.querySelectorAll('.cause_manipulation');
            for (var i = 0; i < cause_manipulation.length; i++) {
                cause_manipulation[i].classList.toggle('on');
            };
        };
      
       break;
        case 'villgender_female': {
            var villgender_female = document.querySelectorAll('.villgender_female');
            for (var i = 0; i < villgender_female.length; i++) {
                villgender_female[i].classList.toggle('on');
            };
        };
        break;
        case 'villgender_male': {
            var villgender_male = document.querySelectorAll('.villgender_male');
            for (var i = 0; i < villgender_male.length; i++) {
                villgender_male[i].classList.toggle('on');
            };
        };
        break;
        case 'reptype_menstruation': {
            var reptype_menstruation = document.querySelectorAll('.reptype_menstruation');
            for (var i = 0; i < reptype_menstruation.length; i++) {
                reptype_menstruation[i].classList.toggle('on');
            };
        };
       
        break;
        case 'reptype_childbirth': {
            var reptype_childbirth = document.querySelectorAll('.reptype_childbirth');
            for (var i = 0; i < reptype_childbirth.length; i++) {
                reptype_childbirth[i].classList.toggle('on');
            };
        };
        break;
        case 'reptype_sex': {
            var reptype_sex = document.querySelectorAll('.reptype_sex');
            for (var i = 0; i < reptype_sex.length; i++) {
                reptype_sex[i].classList.toggle('on');
            };
        };
        break;
        case 'adjgender_female': {
            var adjgender_female = document.querySelectorAll('.adjgender_female');
            for (var i = 0; i < adjgender_female.length; i++) {
                adjgender_female[i].classList.toggle('on');
            };
        };
        
         break;
        case 'adjgender_male': {
            var adjgender_male = document.querySelectorAll('.adjgender_male');
            for (var i = 0; i < adjgender_male.length; i++) {
                adjgender_male[i].classList.toggle('on');
            };
        };
      break;
    }
}    
                
                  

                   
                             

