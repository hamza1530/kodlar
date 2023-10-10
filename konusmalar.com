using System.Collections;

using System.Collections.Generic;

using UnityEngine;
using UnityEngine.UI;



public class car_driver : MonoBehaviour

{	

    int saayi;
	int current_fuel = Random.Range(25, 70);
	int max_benzin = 100 - current_fuel; // arabanin alacagi max benzin degerini bizden istiyo

    public List<string> konusmalar = new List<string>();

    public Text konusmatext;



    public string konusma = " ";



    public void lljq()

    {

        saayi = Random.Range(1, 10);



        konusma = konusmalar[(saayi)];

        konusmatext.text = konusma;

    }	
	private void Start()

    {			

        konusmalar.Add("Bana " + max_benzin + " Litre benzin koyarmisin?");
		konusmalar.Add("Bana " + max_benzin + " Litre benzin!");
		konusmalar.Add("Bana " + max_benzin + " Litre benzin lütfen !");
		konusmalar.Add(max_benzin + " Litre benzin koyarmısın?");
		konusmalar.Add(max_benzin + " Litre benzin!");
		konusmalar.Add(max_benzin + " Litre benzin lütfen!");
		konusmalar.Add("benzinin litresi kac?");
		konusmalar.Add("depoyu fullermisin?");
		konusmalar.Add("depoyu fulle");
		//merhabali kisim
		konusmalar.Add("merhaba kolay gelsin Bana " + max_benzin + " Litre benzin koyarmisin?");
		konusmalar.Add("merhaba kolay gelsin Bana " + max_benzin + " Litre benzin!");
		konusmalar.Add("merhaba kolay gelsin Bana " + max_benzin + " Litre benzin lütfen !");
		konusmalar.Add("merhaba kolay gelsin "max_benzin + " Litre benzin koyarmısın?");
		konusmalar.Add("merhaba kolay gelsin "max_benzin + " Litre benzin!");
		konusmalar.Add("merhaba kolay gelsin "max_benzin + " Litre benzin lütfen!");
		konusmalar.Add("merhaba kolay gelsin benzinin litresi kac?");
		konusmalar.Add("kolay gelsin depoyu fullermisin?");
		konusmalar.Add("kardeş depoyu fullermisin");
		// selamün aleyküm
		konusmalar.Add("Selamün Aleyküm. Bana " + max_benzin + " Litre benzin koyarmisin?");
		konusmalar.Add("Selamün Aleyküm. Bana " + max_benzin + " Litre benzin!");
		konusmalar.Add("Selamün Aleyküm. Bana " + max_benzin + " Litre benzin lütfen !");
		konusmalar.Add("Selamün Aleyküm " max_benzin + " Litre benzin koyarmısın?");
		konusmalar.Add("Selamün Aleyküm. " max_benzin + " Litre benzin!");
		konusmalar.Add("Selamün Aleyküm. " max_benzin + " Litre benzin lütfen!");
		konusmalar.Add("Selamün Aleyküm. benzinin litresi kac?");
		konusmalar.Add("Selamün Aleyküm. depoyu fullermisin?");
		konusmalar.Add("reis depoyu fulle");
		// merhabalar
		konusmalar.Add("Merhabalar Bana " + max_benzin + " Litre benzin koyarmisin?");
		konusmalar.Add("Merhabalar Bana " + max_benzin + " Litre benzin!");
		konusmalar.Add("Merhabalar Bana " + max_benzin + " Litre benzin lütfen !");
		konusmalar.Add("Merhabalar " max_benzin + " Litre benzin koyarmısın?");
		konusmalar.Add("Merhabalar " max_benzin + " Litre benzin!");
		konusmalar.Add("Merhabalar " max_benzin + " Litre benzin lütfen!");
		konusmalar.Add("Merhabalar benzinin litresi kac?");
		konusmalar.Add("Merhabalar depoyu fullermisin?");
		konusmalar.Add("Selam depoyu fulle");
		// iyi günler
		konusmalar.Add("iyi günler " + max_benzin + " Litre benzin koyarmisin?");
		konusmalar.Add("iyi günler " + max_benzin + " Litre benzin!");
		konusmalar.Add("iyi günler " + max_benzin + " Litre benzin lütfen !");
		konusmalar.Add("iyi günler " max_benzin + " Litre benzin koyarmısın?");
		konusmalar.Add("iyi günler " max_benzin + " Litre benzin!");
		konusmalar.Add("iyi günler " max_benzin + " Litre benzin lütfen!");
		konusmalar.Add("iyi günler benzinin litresi kac?");
		konusmalar.Add("iyi günler depoyu fullermisin?");
		konusmalar.Add("Naber? depoyu fulle");

    }
}
