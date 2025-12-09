function addItem() {
    const name = document.getElementById('nameInput').value;
    if (!name) return;

    const li = document.createElement('li');
    li.innerText = name;
    document.getElementById('list').appendChild(li);

    document.getElementById('nameInput').value = "";
}
