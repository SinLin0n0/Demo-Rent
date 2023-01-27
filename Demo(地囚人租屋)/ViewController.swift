//
//  ViewController.swift
//  Demo(591)
//
//  Created by Sin on 2023/1/24.
//

import UIKit

class ViewController: UIViewController {

    //圖片
    let pics = ["0_0你有沒有考慮坐牢？（挪威監獄）", "0_1看守所體驗房","0_2網美帳篷（床位）", "0_3老廚房奇妙改造房", "0_4不夠矮可是不能住的喔", "0_5陽台打通的雙床房", "0_6什麼都有就是沒廁所", "0_7看起來合理但價錢超不合理", "1_0你有沒有考慮坐牢？（奧地利監獄）", "1_1一房一衛這樣定義也可以吧？", "1_2工寮風獨立鐵皮屋", "1_3那不是壁癌是工業風", "1_4極限體能王", "1_5寄生上流小套房", "1_6典雅壁貼小套房", "1_7冰箱暫時用P的之後會補啦～", "1_8推薦當員工宿舍就好", "1_9床包不套不會怎樣啦～", "1_10想要窗戶？我給你整片森林", "1_11看你喜歡哪一間", "1_12哎呀就是蚊子有點多", "1_13家具自備ㄛ", "1_14前里長辦公室，落選出租中", "1_15房間比較不好看先看客廳就好", "1_16樓梯第一格是有點高喇", "1_17黃金地段驚爆價", "1_18現在都馬流行開放式衣櫃", "2_0你有沒有考慮坐牢？（丹麥監獄）", "2_1溫馨小木屋", "2_2房東說家具不可以扔", "2_3房間小一點就可以隔兩間了", "2_4基隆河景大面寬", "2_5家具請自備", "2_6沒有裝潢有算便宜了啦", "2_7等都更就先租出去", "2_8真的是一整層啦只是隔間要自理", "2_9真健身公寓，搬完床墊一定變很壯", "2_10這不是套房喔真的不是喔", "2_11歡迎鬼片劇組承租", "2_12前租客家具不想要啦就留給你", "2_13這個床我買的時候很貴捏", "2_14住商混合喔", "2_15租屋請先投遞履歷", "2_16我聽說出租整層不用附家具啦", "2_17空屋", "2_18一度電6塊", "改找套房", "改找整層", "沒有物件", "預設圖片"]
    //名字
    let name = ["$0\n你有沒有考慮坐牢？（挪威監獄）", "$5000\n看守所體驗房", "$5000\n網美帳篷（床位）", "$10000\n老廚房奇妙改造房", "$10000\n不夠矮可是不能住的喔", "$15000\n陽台打通的雙床房", "$20000\n什麼都有就是沒廁所", "$20000\n看起來合理但價錢超不合理", "$0\n你有沒有考慮坐牢？（奧地利監獄）", "$5000\n一房一衛這樣定義也可以吧？", "$5000\n工寮風獨立鐵皮屋", "$5000\n那不是壁癌是工業風", "$10000\n極限體能王", "$10000\n寄生上流小套房", "$10000\n典雅壁貼小套房", "$15000\n冰箱暫時用P的之後會補啦～", "$15000\n推薦當員工宿舍就好", "$20000\n床包不套不會怎樣啦～", "$20000\n想要窗戶？我給你整片森林", "$25000\n看你喜歡哪一間", "$25000\n哎呀就是蚊子有點多", "$30000\n家具自備ㄛ", "$30000\n前里長辦公室，落選出租中", "$35000\n房間比較不好看先看客廳就好", "$35000\n樓梯第一格是有點高喇", "$40000\n黃金地段驚爆價", "$40000\n現在都馬流行開放式衣櫃", "$0\n你有沒有考慮坐牢？（丹麥監獄）", "$10000\n溫馨小木屋", "$10000\n房東說家具不可以扔", "$15000\n房間小一點就可以隔兩間了", "$15000\n基隆河景大面寬", "$20000\n家具請自備", "$20000\n沒有裝潢有算便宜了啦", "$25000\n等都更就先租出去", "$25000\n真的是一整層啦只是隔間要自理", "$30000\n真健身公寓，搬完床墊一定變很壯", "$30000\n這不是套房喔真的不是喔", "$35000\n歡迎鬼片劇組承租", "$35000\n前租客家具不想要啦就留給你", "$40000\n這個床我買的時候很貴捏", "$40000\n住商混合喔", "$45000\n租屋請先投遞履歷", "$45000\n我聽說出租整層不用附家具啦", "$50000\n空屋", "$50000\n一度電6塊", "*這個預算你值得找套房*", "*這個預算你值得找整層住家*", "*沒有符合的物件*", "*尋找你的甜蜜小窩*"]
    //陣列的數字（連動圖片與名字的陣列號碼）
    var index = 0
    //製作會重複使用的function
    func changeImage(){
        resultImage.image = UIImage(named: pics[index])
        resultImage.frame = CGRect(x: 33, y: 118, width: 348, height: 335)
        resultImage.contentMode = .scaleAspectFill
        resultImage.layer.cornerRadius = 9
        resultLabel.text = name[index]
        resultLabel.textColor = UIColor.black
    }
    
    @IBOutlet weak var type: UISegmentedControl!
    @IBOutlet weak var layout: UISegmentedControl!
    @IBOutlet weak var propertyManagement: UISwitch!
    @IBOutlet weak var priceSlider: UISlider!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        priceLabel.text = "0"
        index = 49
        changeImage()
    }

    @IBAction func price(_ sender: UISlider) {
        let step: Float = 5000
        //轉換型別寫法：valueLabel.text = "\(Int(sender.value))"
        sender.value = (sender.value / step).rounded() * step
        priceLabel.text = "\(Int(sender.value))"
    }

    @IBAction func search(_ sender: Any) {
        if  layout.selectedSegmentIndex == 0, priceSlider.value <= 0{
            index = 0
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 0, propertyManagement.isOn == false,priceSlider.value <= 5000{
            index = 1
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 0, propertyManagement.isOn == true,priceSlider.value <= 5000{
            index = 2
            changeImage()
        }  else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 0, propertyManagement.isOn == false,priceSlider.value > 5000, priceSlider.value <= 10000{
            index = 3
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 0, propertyManagement.isOn == true,priceSlider.value > 5000, priceSlider.value <= 10000{
            index = 4
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 0, propertyManagement.isOn == false,priceSlider.value > 10000, priceSlider.value <= 15000{
            index = 5
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 0, propertyManagement.isOn == false,priceSlider.value > 15000, priceSlider.value <= 2000{
            index = 6
            changeImage()
        }   else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 0, propertyManagement.isOn == true,priceSlider.value > 15000, priceSlider.value <= 20000{
            index = 7
            changeImage()
        } else if layout.selectedSegmentIndex == 0, priceSlider.value > 40000{
            index = 47
            changeImage()
        } else if layout.selectedSegmentIndex == 0, priceSlider.value > 20000{
            index = 46
            changeImage()
        } else if layout.selectedSegmentIndex == 1, priceSlider.value <= 0{
            index = 8
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value <= 5000{
            index = 9
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value <= 5000{
            index = 10
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == true, priceSlider.value <= 5000{
            index = 11
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value > 5000, priceSlider.value <= 10000{
            index = 12
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == true, priceSlider.value > 5000, priceSlider.value <= 10000{
            index = 13
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 1, propertyManagement.isOn == true, priceSlider.value > 5000, priceSlider.value <= 10000{
            index = 14
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value > 10000, priceSlider.value <= 15000{
            index = 15
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value > 10000, priceSlider.value <= 15000{
            index = 16
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value > 15000, priceSlider.value <= 20000{
            index = 17
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 1, propertyManagement.isOn == true, priceSlider.value > 15000, priceSlider.value <= 20000{
            index = 18
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value > 20000, priceSlider.value <= 25000{
            index = 19
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 1, propertyManagement.isOn == true, priceSlider.value > 20000, priceSlider.value <= 25000{
            index = 20
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value > 25000, priceSlider.value <= 30000{
            index = 21
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 1, propertyManagement.isOn == true, priceSlider.value > 25000, priceSlider.value <= 30000{
            index = 22
            changeImage()
        }  else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value > 30000, priceSlider.value <= 35000{
            index = 23
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 1, propertyManagement.isOn == true, priceSlider.value > 30000, priceSlider.value <= 35000{
            index = 24
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 1, propertyManagement.isOn == false, priceSlider.value > 35000, priceSlider.value <= 40000{
            index = 25
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 1, propertyManagement.isOn == true, priceSlider.value > 35000, priceSlider.value <= 40000{
            index = 26
            changeImage()
        } else if layout.selectedSegmentIndex == 1, priceSlider.value > 40000{
            index = 47
            changeImage()
        } else if layout.selectedSegmentIndex == 2, priceSlider.value <= 0{
            index = 27
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value <= 10000{
            index = 28
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 2, propertyManagement.isOn == true, priceSlider.value <= 10000{
            index = 29
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 10000, priceSlider.value <= 15000{
            index = 30
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 10000, priceSlider.value <= 15000{
            index = 31
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 15000, priceSlider.value <= 20000{
            index = 32
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 15000, priceSlider.value <= 20000{
            index = 33
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 20000, priceSlider.value <= 25000{
            index = 34
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 2, propertyManagement.isOn == true, priceSlider.value > 20000, priceSlider.value <= 25000{
            index = 35
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 25000, priceSlider.value <= 30000{
            index = 36
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 2, propertyManagement.isOn == true, priceSlider.value > 25000, priceSlider.value <= 30000{
            index = 37
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 30000, priceSlider.value <= 35000{
            index = 38
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 30000, priceSlider.value <= 35000{
            index = 39
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 35000, priceSlider.value <= 40000{
            index = 40
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 2, propertyManagement.isOn == true, priceSlider.value > 35000, priceSlider.value <= 40000{
            index = 41
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 40000, priceSlider.value <= 45000{
            index = 42
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 2, propertyManagement.isOn == true, priceSlider.value > 40000, priceSlider.value <= 45000{
            index = 43
            changeImage()
        } else if type.selectedSegmentIndex == 0, layout.selectedSegmentIndex == 2, propertyManagement.isOn == false, priceSlider.value > 45000, priceSlider.value <= 50000{
            index = 44
            changeImage()
        } else if type.selectedSegmentIndex == 1, layout.selectedSegmentIndex == 2, propertyManagement.isOn == true, priceSlider.value > 45000, priceSlider.value <= 50000{
            index = 45
            changeImage()
        }

        
        else {
            index = 48
            changeImage()
            resultLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        priceSlider.value = 0
        priceLabel.text = "0"
        index = 49
        changeImage()
        type.selectedSegmentIndex = 0
        layout.selectedSegmentIndex = 0
        propertyManagement.isOn = true
    }
}

