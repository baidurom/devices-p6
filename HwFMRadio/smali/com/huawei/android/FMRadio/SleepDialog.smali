.class public Lcom/huawei/android/FMRadio/SleepDialog;
.super Ljava/lang/Object;
.source "SleepDialog.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mCurSeekTime:I

.field private mCurTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mGraduation:Landroid/widget/ImageView;

.field private mMoveParameter:F

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView15:Landroid/widget/TextView;

.field private mTextView30:Landroid/widget/TextView;

.field private mTextView45:Landroid/widget/TextView;

.field private mTextView60:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/SleepDialog;->initDialog()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/FMRadio/SleepDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/FMRadio/SleepDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/huawei/android/FMRadio/SleepDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/android/FMRadio/SleepDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/huawei/android/FMRadio/SleepDialog;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mMoveParameter:F

    return p1
.end method

.method static synthetic access$400(Lcom/huawei/android/FMRadio/SleepDialog;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/android/FMRadio/SleepDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/SleepDialog;->refreshCurTextView()V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/android/FMRadio/SleepDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/SleepDialog;->refreshGraduationView()V

    return-void
.end method

.method static newInstance(Landroid/content/Context;)Lcom/huawei/android/FMRadio/SleepDialog;
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    new-instance v0, Lcom/huawei/android/FMRadio/SleepDialog;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/SleepDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private refreshCurTextView()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x3ba3d70a

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 186
    return-void

    .line 180
    :cond_0
    iget v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I

    goto :goto_0
.end method

.method private refreshGraduationView()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 191
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mGraduation:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLeft(I)V

    .line 192
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mGraduation:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRight(I)V

    .line 193
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    iget v3, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 195
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView15:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView15:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x4170

    iget v3, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 197
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView30:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView30:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x41f0

    iget v3, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 199
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView45:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView45:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x4234

    iget v3, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 201
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView60:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView60:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x4270

    iget v3, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mMoveParameter:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    .line 203
    return-void
.end method


# virtual methods
.method public initDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030008

    invoke-virtual {v0, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    .line 75
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 76
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/huawei/android/FMRadio/SleepDialog$1;

    invoke-direct {v2, p0}, Lcom/huawei/android/FMRadio/SleepDialog$1;-><init>(Lcom/huawei/android/FMRadio/SleepDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 102
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    new-instance v1, Lcom/huawei/android/FMRadio/SleepDialog$2;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/SleepDialog$2;-><init>(Lcom/huawei/android/FMRadio/SleepDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurTextView:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView1:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView15:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView30:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView45:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mTextView60:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    .line 127
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 128
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mGraduation:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/huawei/android/FMRadio/SleepDialog$3;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/SleepDialog$3;-><init>(Lcom/huawei/android/FMRadio/SleepDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/huawei/android/FMRadio/SleepDialog$4;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/SleepDialog$4;-><init>(Lcom/huawei/android/FMRadio/SleepDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 162
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmSleepMinutes()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 166
    iput v5, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 175
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 170
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmSleepMinutes()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I

    .line 171
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
