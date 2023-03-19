const isotope = document.querySelector('#elment-list');

function renderIso(doc){

    let li = document.createElement('li');
    let Element = document.createElement('span');
    let Isotope_list = document.createElement('span');

    li.setAttribute('data-id', doc.id);
    Element.textContent = doc.data().Element;
    Isotope_list.textContent = doc.data().Isotope_list;

    li.appendChild(Element);
    li.appendChild(Isotope_list);

    isotope.appendChild(li);

}

db.collection('Common Isotopes').get().then((snapshot) => {
    snapshot.docs.array.forEach(doc => {
        renderIso(doc);
    });
})