function toggleSublist(sublistID) {
    var sublist = document.getElementById(sublistID);
    if (sublist.style.display === 'none' || sublist.style.display === '') {
        sublist.style.display = 'block';
    } else {
        sublist.style.display = 'none';
    }
}

document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('mainList').addEventListener('click', function(event) {
        var clickedElement = event.target;
        if (clickedElement.tagName === 'LI') {
            var sublistId = clickedElement.textContent.replace(/\s/g, '') + 'Sublist';
            toggleSublist(sublistId);
        }
    });
});
/* Not sure if this is right, went based off of google searches, may need to connect it to CSS??? */




