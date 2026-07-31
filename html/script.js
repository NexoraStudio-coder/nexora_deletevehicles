window.addEventListener('message', function(event) {
    let item = event.data;

    if (item.action === "show") {
        document.getElementById('cleaner-container').classList.remove('hidden');
        document.getElementById('title').innerText = item.title;
        document.getElementById('description').innerHTML = item.text + '<span id="timer">' + item.time + '</span>s';
    } else if (item.action === "show_success") {
        document.getElementById('cleaner-container').classList.remove('hidden');
        document.getElementById('title').innerText = item.title;
        document.getElementById('description').innerHTML = item.text;
    } else if (item.action === "hide") {
        document.getElementById('cleaner-container').classList.add('hidden');
    }
});
