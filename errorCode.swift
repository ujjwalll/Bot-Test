class ScrollViewController: UIViewController {

    let scrollView = UIScrollView()
    let contentView = UIView()

    private var datePickerView = UIView().then {
        $0.backgroundColor = .pastelGreen
        $0.layer.cornerRadius = 8
    }    
   
    var colorGraphView = UIView().then {
        $0.backgroundColor = .clear
    }
    
    var tableView = UITableView().then {
        $0.backgroundColor = .shadowColor
    }

    var tempView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commonInit()
        scrollView.delegate = self
    }
    
    func commonInit() {
        self.view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(self.scrollView)
            make.width.equalTo(self.scrollView)
        }

        contentView.addSubview(datePickerView)
        contentView.addSubview(colorGraphView)
        contentView.addSubview(tableView)
        contentView.addSubview(tempView)
        
        datePickerView.snp.makeConstraints { make in
            make.leading.equalTo(contentView.snp.leading).offset(16)
            make.trailing.equalTo(contentView.snp.trailing).offset(-16)
            make.top.equalTo(contentView).offset(26)
            make.height.equalTo(42)
        }

        colorGraphView.snp.makeConstraints { make in
            make.leading.equalTo(contentView).offset(16)
            make.trailing.equalTo(contentView).offset(-16)
            make.top.equalTo(datePickerView.snp.bottom).offset(19)
            make.height.equalTo(390)
        }
        tableView.snp.makeConstraints { make in
            make.leading.equalTo(contentView).offset(16)
            make.trailing.equalTo(contentView).offset(-16)
            make.top.equalTo(colorGraphView.snp.bottom).offset(10)
            make.height.equalTo(150)
        }
        tempView.snp.makeConstraints { make in
            make.top.equalTo(tableView.snp.bottom).offset(10)
            make.leading.equalTo(contentView.snp.leading).offset(16)
            make.trailing.equalTo(contentView.snp.trailing).offset(-16)
            make.height.equalTo(100)
            make.bottom.equalTo(contentView.snp.bottom).offset(-20)
        }

        scrollView.backgroundColor = .brown
        contentView.backgroundColor = .blue
        colorGraphView.backgroundColor = .yellow
        tableView.backgroundColor = .gray
        tempView.backgroundColor = .systemTeal    
}