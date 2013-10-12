.class public Lcom/huawei/android/FMRadio/ChannelListActivity;
.super Landroid/app/ListActivity;
.source "ChannelListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private isAutoTune:Z

.field protected mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

.field private mAutoTuneDialog:Landroid/app/ProgressDialog;

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEditView:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeView:Landroid/widget/ImageView;

.field private mInputResultListener:Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;

.field private mListView:Landroid/widget/ListView;

.field private mOnTop:Z

.field private mSearchView:Landroid/widget/ImageView;

.field private mShowAutoTuneDialog:Landroid/app/AlertDialog;

.field private mSleepView:Landroid/widget/ImageView;

.field private mToolBar:Landroid/widget/RelativeLayout;

.field private mWaitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    .line 70
    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mShowAutoTuneDialog:Landroid/app/AlertDialog;

    .line 72
    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    .line 74
    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 343
    new-instance v0, Lcom/huawei/android/FMRadio/ChannelListActivity$3;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/ChannelListActivity$3;-><init>(Lcom/huawei/android/FMRadio/ChannelListActivity;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    .line 358
    new-instance v0, Lcom/huawei/android/FMRadio/ChannelListActivity$4;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/ChannelListActivity$4;-><init>(Lcom/huawei/android/FMRadio/ChannelListActivity;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mInputResultListener:Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;

    .line 380
    new-instance v0, Lcom/huawei/android/FMRadio/ChannelListActivity$5;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/ChannelListActivity$5;-><init>(Lcom/huawei/android/FMRadio/ChannelListActivity;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/android/FMRadio/ChannelListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->isAutoTune:Z

    return v0
.end method

.method static synthetic access$302(Lcom/huawei/android/FMRadio/ChannelListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->isAutoTune:Z

    return p1
.end method

.method static synthetic access$400(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/android/FMRadio/ChannelListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mOnTop:Z

    return v0
.end method

.method private initBar()V
    .locals 7

    .prologue
    const v6, 0x7f0b0003

    const v5, 0x7f0b0002

    const v4, 0x7f0b0001

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mHomeView:Landroid/widget/ImageView;

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mEditView:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mSleepView:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mSearchView:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mToolBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mHomeView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mEditView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mSleepView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mSearchView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->refreshStatus()V

    .line 140
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mToolBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mEditView:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mToolBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mSleepView:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mToolBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mSearchView:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mToolBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private registerChannelListReceiver()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.android.FMRadio.autotunecomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "com.huawei.android.FMRadio.cancelautotune"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "com.huawei.android.FMRadio.headsetunplug"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "com.huawei.android.FMRadio.headsetplug.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "com.huawei.android.FMRadio.headsetplug.search"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "com.huawei.android.FMRadio.open"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "com.huawei.android.FMRadio.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    const-string v1, "ChannelListActivity"

    const-string v2, "Have register a receiver!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method private registerPlayListener()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/huawei/android/FMRadio/ChannelListActivity$1;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/ChannelListActivity$1;-><init>(Lcom/huawei/android/FMRadio/ChannelListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    const-string v0, "ChannelListActivity"

    const-string v1, "Have register a OnItemClickListener for mListView!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method private unregisterChannelListReceiver()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    const-string v0, "ChannelListActivity"

    const-string v1, "unregisterer receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 263
    :sswitch_0
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->onBackPressed()V

    goto :goto_0

    .line 266
    :sswitch_1
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/huawei/android/FMRadio/ItemHolder;

    move-result-object v0

    .line 270
    .local v0, curItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v2

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/FMRadio/RenameDialog;->newInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/huawei/android/FMRadio/RenameDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mInputResultListener:Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;

    invoke-virtual {v1, v2}, Lcom/huawei/android/FMRadio/RenameDialog;->setOnInputResultListener(Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;)V

    .line 274
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 279
    .end local v0           #curItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    :sswitch_2
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/FMRadio/SleepDialog;->newInstance(Landroid/content/Context;)Lcom/huawei/android/FMRadio/SleepDialog;

    goto :goto_0

    .line 282
    :sswitch_3
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->checkCurStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mShowAutoTuneDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 285
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f05

    new-instance v3, Lcom/huawei/android/FMRadio/ChannelListActivity$2;

    invoke-direct {v3, p0}, Lcom/huawei/android/FMRadio/ChannelListActivity$2;-><init>(Lcom/huawei/android/FMRadio/ChannelListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mShowAutoTuneDialog:Landroid/app/AlertDialog;

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mShowAutoTuneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b0002 -> :sswitch_1
        0x7f0b0003 -> :sswitch_2
        0x7f0b0004 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->initBar()V

    .line 111
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "ChannelListActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mListView:Landroid/widget/ListView;

    .line 85
    iput-object p0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->registerPlayListener()V

    .line 88
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->registerChannelListReceiver()V

    .line 90
    new-instance v0, Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/ChannelListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    .line 91
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-static {p0}, Lcom/huawei/android/FMRadio/CommonUI;->initWaitProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 95
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mToolBar:Landroid/widget/RelativeLayout;

    .line 96
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    .line 97
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->actionBar:Landroid/app/ActionBar;

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 102
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->initBar()V

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->unregisterChannelListReceiver()V

    .line 234
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    iput-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 241
    iput-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    .line 244
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 245
    const-string v0, "ChannelListActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 324
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 325
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doStopAutoTuning(Landroid/content/Context;Landroid/os/Handler;)V

    .line 327
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 199
    const-string v0, "ChannelListActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 205
    const-string v0, "ChannelListActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 187
    const-string v0, "ChannelListActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mOnTop:Z

    .line 189
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 190
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 211
    const-string v0, "ChannelListActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 217
    const-string v0, "ChannelListActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mOnTop:Z

    .line 221
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isApplicationTop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 228
    :cond_0
    return-void
.end method

.method public refreshStatus()V
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mEditView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isStationSaved(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mSleepView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 254
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAutoTune(Z)V
    .locals 3
    .parameter "keepCollected"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/FMRadio/CommonUI;->initAutoTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity;->isAutoTune:Z

    .line 341
    return-void
.end method
