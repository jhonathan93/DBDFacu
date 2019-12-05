$.getJSON("js/json/img.json", function (data) {
    $.each(data, function (key) {
        for (var index = 0; index < 1; index++) {
            var perk1 = document.querySelector("#survivor");
            var perk2 = document.querySelector("#killer");
            var div = document.createElement('div');
            var image = document.createElement('img');
            var title = document.createElement('h1');

            if (key.substring(0, 2) == 23) {
                perk1.appendChild(div);
                div.setAttribute("class", "boxPerk");
                title.setAttribute("class", "titlePerk");
                title.textContent = data[key][0].nome;
                div.appendChild(title);
                image.setAttribute("class", "imgPerk");
                image.setAttribute("src", data[key][0].url);
                div.appendChild(image);
            }

            if (key.substring(0, 2) == 13) {
                perk2.appendChild(div);
                div.setAttribute("class", "boxPerk");
                title.setAttribute("class", "titlePerk");
                title.textContent = data[key][0].nome;
                div.appendChild(title);
                image.setAttribute("class", "imgPerk");
                image.setAttribute("src", data[key][0].url);
                div.appendChild(image);
            }
        }
    });
});
    
