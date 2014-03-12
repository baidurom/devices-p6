.class public Lcom/huawei/android/hwpowermanager/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"


# instance fields
.field private dialog_choice:Landroid/content/SharedPreferences;

.field private mSelect:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/DialogActivity;->mSelect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hwpowermanager/DialogActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/huawei/android/hwpowermanager/DialogActivity;->mSelect:Z

    return v0
.end method

.method static synthetic access$002(Lcom/huawei/android/hwpowermanager/DialogActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/huawei/android/hwpowermanager/DialogActivity;->mSelect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/DialogActivity;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/hwpowermanager/DialogActivity;->dealSharedPreference(ZZ)V

    return-void
.end method

.method private dealSharedPreference(ZZ)V
    .locals 2
    .parameter "select"
    .parameter "kill"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/DialogActivity;->dialog_choice:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, newNotifyAppsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "DailogUserChoice"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v1, "killbgApp"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x400

    const/4 v8, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "dialog_choice"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/android/hwpowermanager/DialogActivity;->dialog_choice:Landroid/content/SharedPreferences;

    .line 32
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/DialogActivity;->dialog_choice:Landroid/content/SharedPreferences;

    const-string v6, "DailogUserChoice"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 35
    .local v4, mUserChoice:Z
    if-eqz v4, :cond_0

    .line 91
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/huawei/android/hwpowermanager/DialogActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 41
    const v5, 0x7f030007

    invoke-virtual {p0, v5}, Lcom/huawei/android/hwpowermanager/DialogActivity;->setContentView(I)V

    .line 45
    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, checkBoxView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 48
    .local v3, leftPadding:I
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 50
    .local v0, bottomPadding:I
    invoke-virtual {v2, v3, v8, v8, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    const v5, 0x7f0b0012

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 52
    .local v1, checkBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/huawei/android/hwpowermanager/DialogActivity$1;

    invoke-direct {v5, p0}, Lcom/huawei/android/hwpowermanager/DialogActivity$1;-><init>(Lcom/huawei/android/hwpowermanager/DialogActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f02000f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/huawei/android/hwpowermanager/DialogActivity$3;

    invoke-direct {v7, p0}, Lcom/huawei/android/hwpowermanager/DialogActivity$3;-><init>(Lcom/huawei/android/hwpowermanager/DialogActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/huawei/android/hwpowermanager/DialogActivity$2;

    invoke-direct {v7, p0}, Lcom/huawei/android/hwpowermanager/DialogActivity$2;-><init>(Lcom/huawei/android/hwpowermanager/DialogActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
