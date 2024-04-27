function init() {
    //loadBackground = document.body.style.color
    var boxes = document.getElementsByTagName('input')
    for (var i = 0; i < boxes.length; i++) {
        boxes[i].addEventListener('click', toggleHighlight, false);
    }
}

           function toggleHighlight() {
    var device = this.id;
    console.log("choice: "+device);
    switch (device) {
        case 'beauty': {
            var beauty = document.querySelectorAll('.beauty');
            for (var i = 0; i < beauty.length; i++) {
                beauty[i].classList.toggle('on');
            };
        };
        break;
        case 'innocent': {
            var innocent = document.querySelectorAll('.innocent');
            for (var i = 0; i < innocent.length; i++) {
                innocent[i].classList.toggle('on');
            };
        };
        break;
        case 'naivity': {
            var naivity = document.querySelectorAll('.naivity');
            for (var i = 0; i < naivity.length; i++) {
                naivity[i].classList.toggle('on');
            };
        };                  
              break;
        case 'maternal': {
            var maternal = document.querySelectorAll('.maternal');
            for (var i = 0; i < maternal.length; i++) {
                maternal[i].classList.toggle('on');
            };
        };
        
        break;
        case 'emotional': {
            var emotional = document.querySelectorAll('.emotional');
            for (var i = 0; i < emotional.length; i++) {
                emotional[i].classList.toggle('on');
            };
        };
        break;
        case 'clever': {
            var clever = document.querySelectorAll('.clever');
            for (var i = 0; i < clever.length; i++) {
                clever[i].classList.toggle('on');
            };
        };                   
                              
                              
           break;
        case 'secluded': {
            var secluded = document.querySelectorAll('.secluded');
            for (var i = 0; i < secluded.length; i++) {
                secluded[i].classList.toggle('on');
            };
        };
        break;
        case 'protective': {
            var protective = document.querySelectorAll('.protective');
            for (var i = 0; i < protective.length; i++) {
                protective[i].classList.toggle('on');
            };
        };
        break;
        case 'brave': {
            var brave = document.querySelectorAll('.brave');
            for (var i = 0; i < brave.length; i++) {
                brave[i].classList.toggle('on');
            };
        };
      
      break;
        case 'domesticity': {
            var domesticity = document.querySelectorAll('.domesticity');
            for (var i = 0; i < domesticity.length; i++) {
                domesticity[i].classList.toggle('on');
            };
        };
        break;
        case 'female': {
            var female = document.querySelectorAll('.female');
            for (var i = 0; i < female.length; i++) {
                female[i].classList.toggle('on');
            };
        };
        break;
        case 'male': {
            var male = document.querySelectorAll('.male');
            for (var i = 0; i < male.length; i++) {
                male[i].classList.toggle('on');
            };
        };
      
      
      break;
        case 'young': {
            var young = document.querySelectorAll('.young');
            for (var i = 0; i < young.length; i++) {
                young[i].classList.toggle('on');
            };
        };
        break;
        case 'old': {
            var old = document.querySelectorAll('.old');
            for (var i = 0; i < old.length; i++) {
                old[i].classList.toggle('on');
            };
        };
        break;
        case 'physical': {
            var physical = document.querySelectorAll('.physical');
            for (var i = 0; i < physical.length; i++) {
                physical[i].classList.toggle('on');
            };
        };
      
      
      break;
        case 'nonphysical': {
            var nonphysical = document.querySelectorAll('.nonphysical');
            for (var i = 0; i < nonphysical.length; i++) {
                nonphysical[i].classList.toggle('on');
            };
        };
        break;
        case 'controlled': {
            var controlled = document.querySelectorAll('.controlled');
            for (var i = 0; i < controlled.length; i++) {
                controlled[i].classList.toggle('on');
            };
        };
        break;
        case 'free': {
            var free = document.querySelectorAll('.free');
            for (var i = 0; i < free.length; i++) {
                free[i].classList.toggle('on');
            };
        };
        
         break;
        case 'male_savior': {
            var male_savior = document.querySelectorAll('.male_savior');
            for (var i = 0; i < male_savior.length; i++) {
                male_savior[i].classList.toggle('on');
            };
        };
        
        break;
        case 'damsel': {
            var damsel = document.querySelectorAll('.damsel');
            for (var i = 0; i < damsel.length; i++) {
                damsel[i].classList.toggle('on');
            };
        };
        break;
        case 'evil': {
            var evil = document.querySelectorAll('.evil');
            for (var i = 0; i < evil.length; i++) {
                evil[i].classList.toggle('on');
            };
        };
        
         break;
        case 'religious': {
            var religious = document.querySelectorAll('.religious');
            for (var i = 0; i < religious.length; i++) {
                religious[i].classList.toggle('on');
            };
        };
        break;
        case 'heroine': {
            var heroine = document.querySelectorAll('.heroine');
            for (var i = 0; i < heroine.length; i++) {
                heroine[i].classList.toggle('on');
            };
        };
       
       break;
        case 'societal_expectations': {
            var societal_expectations = document.querySelectorAll('.societal_expectations');
            for (var i = 0; i < societal_expectations.length; i++) {
                societal_expectations[i].classList.toggle('on');
            };
        };
     
        break;
        case 'competition': {
            var competition = document.querySelectorAll('.competition');
            for (var i = 0; i < competition.length; i++) {
                competition[i].classList.toggle('on');
            };
        };
      
       break;
        case 'jealousy': {
            var jealousy = document.querySelectorAll('.jealousy');
            for (var i = 0; i < jealousy.length; i++) {
                jealousy[i].classList.toggle('on');
            };
        };
        break;
        case 'revenge': {
            var revenge = document.querySelectorAll('.revenge');
            for (var i = 0; i < revenge.length; i++) {
                revenge[i].classList.toggle('on');
            };
        };
        break;
        case 'unspecified': {
            var unspecified = document.querySelectorAll('.unspecified');
            for (var i = 0; i < unspecified.length; i++) {
                unspecified[i].classList.toggle('on');
            };
        };
      
       break;
        case 'sex': {
            var sex = document.querySelectorAll('.sex');
            for (var i = 0; i < sex.length; i++) {
                sex[i].classList.toggle('on');
            };
        };
        break;
        case 'power': {
            var power = document.querySelectorAll('.power');
            for (var i = 0; i < power.length; i++) {
                power[i].classList.toggle('on');
            };
        };
        break;
        case 'manipulation': {
            var manipulation = document.querySelectorAll('.manipulation');
            for (var i = 0; i < manipulation.length; i++) {
                manipulation[i].classList.toggle('on');
            };
        };
 
        break;
        case 'menstruation': {
            var menstruation = document.querySelectorAll('.menstruation');
            for (var i = 0; i < menstruation.length; i++) {
                menstruation[i].classList.toggle('on');
            };
        };
       
        break;
        case 'childbirth': {
            var childbirth = document.querySelectorAll('.childbirth');
            for (var i = 0; i < childbirth.length; i++) {
                childbirth[i].classList.toggle('on');
            };
        };
        break;
        case 'sex': {
            var sex = document.querySelectorAll('.sex');
            for (var i = 0; i < sex.length; i++) {
                sex[i].classList.toggle('on');
            };
        };
        break;
    }
}           

window.onload = init;         
                  

                   
                             

