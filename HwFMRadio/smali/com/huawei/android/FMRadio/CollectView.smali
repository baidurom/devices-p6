.class Lcom/huawei/android/FMRadio/CollectView;
.super Landroid/widget/GridView;
.source "CollectPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;
    }
.end annotation


# instance fields
.field private mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

.field private mItemNumber:I

.field private mOnCollectListener:Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;

.field private mStartIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "startIndex"
    .parameter "itemNumber"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 80
    iput p2, p0, Lcom/huawei/android/FMRadio/CollectView;->mStartIndex:I

    .line 81
    iput p3, p0, Lcom/huawei/android/FMRadio/CollectView;->mItemNumber:I

    .line 82
    invoke-direct {p0, p1}, Lcom/huawei/android/FMRadio/CollectView;->initView(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/FMRadio/CollectView;)Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectView;->mOnCollectListener:Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/FMRadio/CollectView;)Lcom/huawei/android/FMRadio/CollectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectView;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/FMRadio/CollectView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/huawei/android/FMRadio/CollectView;->mStartIndex:I

    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x7f070018

    .line 87
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectView;->setNumColumns(I)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectView;->setMinimumWidth(I)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectView;->setMinimumHeight(I)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectView;->setColumnWidth(I)V

    .line 92
    const v0, 0x7f02001e

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectView;->setBackgroundResource(I)V

    .line 94
    new-instance v0, Lcom/huawei/android/FMRadio/CollectAdapter;

    iget v1, p0, Lcom/huawei/android/FMRadio/CollectView;->mStartIndex:I

    iget v2, p0, Lcom/huawei/android/FMRadio/CollectView;->mItemNumber:I

    invoke-direct {v0, p1, v1, v2}, Lcom/huawei/android/FMRadio/CollectAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/CollectView;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

    .line 96
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectView;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    new-instance v0, Lcom/huawei/android/FMRadio/CollectView$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/CollectView$1;-><init>(Lcom/huawei/android/FMRadio/CollectView;)V

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    new-instance v0, Lcom/huawei/android/FMRadio/CollectView$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/CollectView$2;-><init>(Lcom/huawei/android/FMRadio/CollectView;)V

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/CollectView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 122
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/huawei/android/FMRadio/CollectView;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/CollectAdapter;->notifyDataSetChanged()V

    .line 126
    return-void
.end method

.method public setOnCollectListener(Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;)V
    .locals 0
    .parameter "onCollectListener"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/huawei/android/FMRadio/CollectView;->mOnCollectListener:Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;

    .line 130
    return-void
.end method
