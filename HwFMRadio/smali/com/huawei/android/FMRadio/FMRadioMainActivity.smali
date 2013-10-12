.class public Lcom/huawei/android/FMRadio/FMRadioMainActivity;
.super Landroid/app/Activity;
.source "FMRadioMainActivity.java"


# instance fields
.field private isAutoTune:Z

.field private mAutoTuneDialog:Landroid/app/ProgressDialog;

.field private mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

.field private mCollectPager:Lcom/huawei/android/FMRadio/CollectPager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurFrequency:I

.field private mDisplayLayout:Landroid/widget/FrameLayout;

.field private mFreqIndicator:Landroid/widget/ImageView;

.field private mFrequencyView:Landroid/widget/TextView;

.field private mGridView:Landroid/widget/GridView;

.field private mHeadsetButton:Landroid/widget/ImageButton;

.field private mInputResultListener:Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;

.field private mListButton:Landroid/widget/ImageButton;

.field private final mMainHandler:Landroid/os/Handler;

.field private mManualTuneDialog:Landroid/app/ProgressDialog;

.field private mMaskView:Landroid/widget/ImageView;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mOnTop:Z

.field private mPowerButton:Landroid/widget/ImageButton;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mScreenWidth:I

.field private mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

.field private mStationNameView:Landroid/widget/TextView;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mUnitView:Landroid/widget/TextView;

.field private mWaitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 604
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$13;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 764
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$14;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$14;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    .line 781
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$15;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$15;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mInputResultListener:Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;

    .line 803
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->switchSoundMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->isAutoTune:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/huawei/android/FMRadio/FMRadioMainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->isAutoTune:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mOnTop:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshViews()V

    return-void
.end method

.method static synthetic access$1600(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/huawei/android/FMRadio/FMRadioMainActivity;Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;)Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    return v0
.end method

.method static synthetic access$402(Lcom/huawei/android/FMRadio/FMRadioMainActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    return p1
.end method

.method static synthetic access$500(Lcom/huawei/android/FMRadio/FMRadioMainActivity;Landroid/view/ContextMenu;ILcom/huawei/android/FMRadio/ItemHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->onCollectItemLongClick(Landroid/view/ContextMenu;ILcom/huawei/android/FMRadio/ItemHolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/android/FMRadio/FMRadioMainActivity;ILcom/huawei/android/FMRadio/ItemHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->onCollectItemClick(ILcom/huawei/android/FMRadio/ItemHolder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Lcom/huawei/android/FMRadio/CollectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mInputResultListener:Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshCollect()V

    return-void
.end method

.method private bindToService()V
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f08001f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 757
    const-string v0, "FMRadioMainActivity"

    const-string v1, "bindToService bind service error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_0
    return-void

    .line 761
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->registerBroadcastReceiver()V

    goto :goto_0
.end method

.method private initParameter()V
    .locals 5

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 468
    .local v1, orientation:I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 469
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 471
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 472
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    .line 477
    :goto_0
    const-string v2, "FMRadioMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initParameter mScreenWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 474
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    goto :goto_0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 142
    const-string v0, "FMRadioMainActivity"

    const-string v1, "initViews"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMaskView:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mDisplayLayout:Landroid/widget/FrameLayout;

    .line 154
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioMainActivity$1;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$1;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    .line 166
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioMainActivity$2;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$2;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mListButton:Landroid/widget/ImageButton;

    .line 175
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mListButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioMainActivity$3;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$3;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    .line 187
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mPrevButton:Landroid/widget/ImageButton;

    .line 211
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mPrevButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioMainActivity$5;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$5;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mNextButton:Landroid/widget/ImageButton;

    .line 220
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioMainActivity$6;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$6;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/FMRadio/CollectPager;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectPager:Lcom/huawei/android/FMRadio/CollectPager;

    .line 231
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectPager:Lcom/huawei/android/FMRadio/CollectPager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectPager:Lcom/huawei/android/FMRadio/CollectPager;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioMainActivity$7;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$7;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/CollectPager;->setOnCollectListener(Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;)V

    .line 247
    :cond_0
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    .line 249
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/huawei/android/FMRadio/CollectAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/huawei/android/FMRadio/CollectAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

    .line 253
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioMainActivity$8;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$8;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioMainActivity$9;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$9;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 275
    :cond_1
    return-void
.end method

.method private onCollectItemClick(ILcom/huawei/android/FMRadio/ItemHolder;)V
    .locals 5
    .parameter "position"
    .parameter "itemHolder"

    .prologue
    const v4, 0x7f08003a

    const/4 v3, 0x0

    .line 280
    if-nez p2, :cond_3

    .line 281
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/huawei/android/FMRadio/ItemHolder;

    move-result-object p2

    .line 284
    if-nez p2, :cond_1

    .line 285
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doSaveCollectStation(Landroid/content/Context;ILjava/lang/String;I)Z

    .line 287
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshCollect()V

    .line 288
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p2}, Lcom/huawei/android/FMRadio/ItemHolder;->ismCollected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f08003b

    invoke-static {v0, v1, v3}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doUpdateCollectStatus(Landroid/content/Context;IZI)Z

    .line 294
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshCollect()V

    .line 295
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->play(Landroid/content/Context;ILandroid/app/ProgressDialog;Landroid/os/Handler;)Z

    goto :goto_0
.end method

.method private onCollectItemLongClick(Landroid/view/ContextMenu;ILcom/huawei/android/FMRadio/ItemHolder;)V
    .locals 6
    .parameter "menu"
    .parameter "position"
    .parameter "itemHolder"

    .prologue
    const/16 v5, 0x66

    const/16 v3, 0x65

    const/4 v4, 0x0

    .line 309
    if-eqz p3, :cond_0

    .line 311
    const v2, 0x7f08003d

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 313
    invoke-virtual {p3}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v0

    .line 314
    .local v0, frequency:I
    invoke-virtual {p3}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, stationName:Ljava/lang/String;
    const v2, 0x7f08000c

    invoke-interface {p1, v4, v3, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 328
    const v2, 0x7f080035

    invoke-interface {p1, v4, v5, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;

    invoke-direct {v3, p0, v0, p2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;II)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 342
    .end local v0           #frequency:I
    .end local v1           #stationName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private refreshCollect()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectPager:Lcom/huawei/android/FMRadio/CollectPager;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectPager:Lcom/huawei/android/FMRadio/CollectPager;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/CollectPager;->notifyDataSetChanged()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/CollectAdapter;->notifyDataSetChanged()V

    .line 355
    :cond_1
    return-void
.end method

.method private refreshIndicator(I)V
    .locals 7
    .parameter "currFreq"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, indicatorPos:F
    invoke-static {p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    add-int/lit16 v3, p1, -0x222e

    int-to-float v3, v3

    const v4, 0x3dcccccd

    mul-float v0, v3, v4

    .line 443
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    .line 445
    .local v1, isPortrait:Z
    :goto_0
    iget v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_4

    .line 446
    if-eqz v1, :cond_3

    const v2, 0x4008d4fe

    :goto_1
    mul-float/2addr v0, v2

    .line 457
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    float-to-int v3, v0

    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFreqIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 461
    .end local v1           #isPortrait:Z
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 443
    goto :goto_0

    .line 446
    .restart local v1       #isPortrait:Z
    :cond_3
    const v2, 0x4033126f

    goto :goto_1

    .line 448
    :cond_4
    iget v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    const/16 v3, 0x21c

    if-ne v2, v3, :cond_6

    .line 449
    if-eqz v1, :cond_5

    const v2, 0x4019999a

    :goto_3
    mul-float/2addr v0, v2

    goto :goto_2

    :cond_5
    const v2, 0x404e147b

    goto :goto_3

    .line 451
    :cond_6
    iget v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mScreenWidth:I

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_0

    .line 452
    if-eqz v1, :cond_7

    const v2, 0x404ccccd

    :goto_4
    mul-float/2addr v0, v2

    goto :goto_2

    :cond_7
    const v2, 0x4089c28f

    goto :goto_4
.end method

.method private refreshViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    const-string v2, "FMRadioMainActivity"

    const-string v3, "refreshViews"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    .line 364
    .local v0, isBroadcastOn:Z
    if-eqz v0, :cond_0

    .line 365
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    .line 368
    :cond_0
    iget v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v1

    .line 371
    .local v1, isFreqValid:Z
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 373
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFMSoundMode()B

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 380
    :goto_0
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 381
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 382
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 384
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    iget v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getDisplayFrequency(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    iget v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMaskView:Landroid/widget/ImageView;

    const v3, 0x7f02003c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 395
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 424
    :goto_1
    iget v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-direct {p0, v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshIndicator(I)V

    .line 427
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshCollect()V

    .line 429
    return-void

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 399
    :cond_3
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 400
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 401
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mHeadsetButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 403
    if-eqz v1, :cond_4

    .line 404
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    iget v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getDisplayFrequency(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    iget v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :goto_2
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMaskView:Landroid/widget/ImageView;

    const v3, 0x7f02003b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 421
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mPowerButton:Landroid/widget/ImageButton;

    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 415
    :cond_4
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mFrequencyView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mUnitView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 733
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 735
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.android.FMRadio.autotunecomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    const-string v1, "com.huawei.android.FMRadio.cancelautotune"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 737
    const-string v1, "com.huawei.android.FMRadio.manualtunecomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    const-string v1, "com.huawei.android.FMRadio.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    const-string v1, "com.huawei.android.FMRadio.operationfail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 741
    const-string v1, "com.huawei.android.FMRadio.headsetunplug"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    const-string v1, "com.huawei.android.FMRadio.headsetplug.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    const-string v1, "com.huawei.android.FMRadio.headsetplug.search"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v1, "com.huawei.android.FMRadio.opensoundsuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v1, "com.huawei.android.FMRadio.callingstate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v1, "com.huawei.android.FMRadio.open"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 749
    return-void
.end method

.method private switchSoundMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 720
    const-string v0, "FMRadioMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchSoundMode current soundmode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFMSoundMode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFMSoundMode()B

    move-result v0

    if-ne v3, v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->fmOpenFMSound(B)V

    .line 724
    const-string v0, "FMRadioMainActivity"

    const-string v1, "switch to speaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    invoke-virtual {v0, v3}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->fmOpenFMSound(B)V

    .line 727
    const-string v0, "FMRadioMainActivity"

    const-string v1, "switch to headset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->setContentView(I)V

    .line 136
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->initViews()V

    .line 137
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshViews()V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->setContentView(I)V

    .line 112
    iput-object p0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/CommonUI;->initWaitProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 115
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->initStationRecord(Landroid/content/Context;)V

    .line 117
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    .line 123
    :goto_0
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->bindToService()V

    .line 124
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->initViews()V

    .line 126
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->initParameter()V

    .line 128
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getLastPlayValidFrequency(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 527
    iput-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 532
    iput-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    if-eqz v0, :cond_2

    .line 536
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->unbindFromService(Landroid/content/Context;)V

    .line 537
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 538
    const-string v0, "FMRadioMainActivity"

    const-string v1, "unbind service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_2
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 546
    :cond_3
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 548
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 552
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 555
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doStopAutoTuning(Landroid/content/Context;Landroid/os/Handler;)V

    .line 557
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 558
    const/4 v0, 0x1

    .line 562
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 502
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 503
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 484
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mOnTop:Z

    .line 487
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 488
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->registerMediaButtonEventReceiver(Landroid/content/Context;)V

    .line 489
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshViews()V

    .line 490
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->checkCurStatus(Landroid/content/Context;)Z

    .line 491
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 492
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 497
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 508
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 509
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mOnTop:Z

    .line 513
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isApplicationTop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 520
    :cond_0
    return-void
.end method

.method public showChooserDialog()V
    .locals 4

    .prologue
    .line 586
    new-instance v0, Lcom/huawei/android/FMRadio/FrequencyPicker;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/android/FMRadio/FrequencyPicker;-><init>(Landroid/content/Context;)V

    .line 587
    .local v0, frequencyPicker:Lcom/huawei/android/FMRadio/FrequencyPicker;
    iget v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/FrequencyPicker;->setCurrentFrequency(Ljava/lang/Integer;)V

    .line 589
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;

    invoke-direct {v3, p0, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;-><init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;Lcom/huawei/android/FMRadio/FrequencyPicker;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 602
    return-void
.end method

.method public startAutoTune(Z)V
    .locals 3
    .parameter "keepCollected"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/CommonUI;->initAutoTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->isAutoTune:Z

    .line 573
    return-void
.end method

.method public startManualTune(Z)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/CommonUI;->initManualTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mManualTuneDialog:Landroid/app/ProgressDialog;

    invoke-static {v0, v1, p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doManualSearch(Landroid/content/Context;Landroid/app/ProgressDialog;Z)V

    .line 582
    return-void
.end method
