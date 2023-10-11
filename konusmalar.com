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
	public List<string> cevaplar = new List<string>();
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
		konusmalar.Add("Benzinin litresi kac?");
		konusmalar.Add("Depoyu fullermisin?");
		konusmalar.Add("Depoyu fulle");
		//merhabali kisim
		konusmalar.Add("Merhaba kolay gelsin bana " + max_benzin + " Litre benzin koyarmisin?");
		konusmalar.Add("Merhaba kolay gelsin bana " + max_benzin + " Litre benzin!");
		konusmalar.Add("Merhaba kolay gelsin bana " + max_benzin + " Litre benzin lütfen !");
		konusmalar.Add("Merhaba kolay gelsin "max_benzin + " Litre benzin koyarmısın?");
		konusmalar.Add("Merhaba kolay gelsin "max_benzin + " Litre benzin!");
		konusmalar.Add("Merhaba kolay gelsin "max_benzin + " Litre benzin lütfen!");
		konusmalar.Add("Merhaba kolay gelsin benzinin litresi kac?");
		konusmalar.Add("Kolay gelsin depoyu fullermisin?");
		konusmalar.Add("Kardeş depoyu fullermisin");
		// selamün aleyküm
		konusmalar.Add("Selamün Aleyküm. Bana " + max_benzin + " Litre benzin koyarmisin?");
		konusmalar.Add("Selamün Aleyküm. Bana " + max_benzin + " Litre benzin!");
		konusmalar.Add("Selamün Aleyküm. Bana " + max_benzin + " Litre benzin lütfen !");
		konusmalar.Add("Selamün Aleyküm " max_benzin + " Litre benzin koyarmısın?");
		konusmalar.Add("Selamün Aleyküm. " max_benzin + " Litre benzin!");
		konusmalar.Add("Selamün Aleyküm. " max_benzin + " Litre benzin lütfen!");
		konusmalar.Add("Selamün Aleyküm. Benzinin litresi kac?");
		konusmalar.Add("Selamün Aleyküm. Depoyu fullermisin?");
		konusmalar.Add("Reis depoyu fulle");
		// merhabalar
		konusmalar.Add("Merhabalar bana " + max_benzin + " Litre benzin koyarmisin?");
		konusmalar.Add("Merhabalar bana " + max_benzin + " Litre benzin!");
		konusmalar.Add("Merhabalar bana " + max_benzin + " Litre benzin lütfen !");
		konusmalar.Add("Merhabalar " max_benzin + " Litre benzin koyarmısın?");
		konusmalar.Add("Merhabalar " max_benzin + " Litre benzin!");
		konusmalar.Add("Merhabalar " max_benzin + " Litre benzin lütfen!");
		konusmalar.Add("Merhabalar benzinin litresi kac?");
		konusmalar.Add("Merhabalar depoyu fullermisin?");
		konusmalar.Add("Selam depoyu fulle");
		// İyi günler
		konusmalar.Add("İyi günler " + max_benzin + " Litre benzin koyarmisin?");
		konusmalar.Add("İyi günler " + max_benzin + " Litre benzin!");
		konusmalar.Add("İyi günler " + max_benzin + " Litre benzin lütfen !");
		konusmalar.Add("İyi günler " max_benzin + " Litre benzin koyarmısın?");
		konusmalar.Add("İyi günler " max_benzin + " Litre benzin!");
		konusmalar.Add("İyi günler " max_benzin + " Litre benzin lütfen!");
		konusmalar.Add("İyi günler benzinin litresi kac?");
		konusmalar.Add("İyi günler depoyu fullermisin?");
		konusmalar.Add("Naber? depoyu fulle");

		//cevaplar
		cevaplar.Add("tabiki");
		cevaplar.Add("tamam");
		cevaplar.Add("tamamdır");
		cevaplar.Add("peki");
		cevaplar.Add("elbette");
		cevaplar.Add("tabiki");
		cevaplar.Add("hemen");
	        cevaplar.Add("tabiki 1 dakika");
		cevaplar.Add("tamam 1 dakika");
		cevaplar.Add("tamamdır 1 dakika");
		cevaplar.Add("peki 1 dakika");
		cevaplar.Add("elbette 1 dakika");
		cevaplar.Add("tabiki 1 dakika");
		cevaplar.Add("hemen, 1 dakika");
    }
}
