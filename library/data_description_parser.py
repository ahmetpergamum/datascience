import json

def data_description_house_prices():
    data_dict = {}
    # txt dosyayi alip sozluk olarak parse edelim
    with open('data/data_description.txt') as f:
        lines = f.readlines() # her bir satirin tutan liste
        features = [] # degisken isimleri

        for line in lines:
            line = line.strip() # bosluklari giderir
            if line:
                if ':' in line:
                    features = [item.strip() for item in line.split(':')]
                    data_dict[features[0]] = {}
                    data_dict[features[0]]['description'] = features[1]
                else:
                    values = [item for item in line.split('\t')]  # degisken degerleri
                    data_dict[features[0]][values[0]] = values[1]

    # parse ettigimiz sozlugu json dosyasi olarak kaydedelim
    # with open('data/data_description.json', 'w') as fp:
    #     json.dump(data_dict, fp)

    # son olarak test etmek icin json dosyasini okuyup yine bir sozluge yukleyelim
    # with open('data_description.json', 'r') as f:
    #     data_dict = json.load(f)

    return data_dict
