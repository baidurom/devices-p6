.class Lcom/huawei/android/FMRadio/CollectView$2;
.super Ljava/lang/Object;
.source "CollectPager.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/CollectView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/CollectView;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/CollectView;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/huawei/android/FMRadio/CollectView$2;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 113
    iget-object v3, p0, Lcom/huawei/android/FMRadio/CollectView$2;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    #getter for: Lcom/huawei/android/FMRadio/CollectView;->mOnCollectListener:Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/CollectView;->access$000(Lcom/huawei/android/FMRadio/CollectView;)Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v0, p3

    .line 114
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 115
    .local v0, contextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 116
    .local v2, position:I
    iget-object v3, p0, Lcom/huawei/android/FMRadio/CollectView$2;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    #getter for: Lcom/huawei/android/FMRadio/CollectView;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/CollectView;->access$100(Lcom/huawei/android/FMRadio/CollectView;)Lcom/huawei/android/FMRadio/CollectAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/huawei/android/FMRadio/CollectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/FMRadio/ItemHolder;

    .line 117
    .local v1, itemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    iget-object v3, p0, Lcom/huawei/android/FMRadio/CollectView$2;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    #getter for: Lcom/huawei/android/FMRadio/CollectView;->mOnCollectListener:Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/CollectView;->access$000(Lcom/huawei/android/FMRadio/CollectView;)Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/FMRadio/CollectView$2;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    #getter for: Lcom/huawei/android/FMRadio/CollectView;->mStartIndex:I
    invoke-static {v4}, Lcom/huawei/android/FMRadio/CollectView;->access$200(Lcom/huawei/android/FMRadio/CollectView;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-interface {v3, p1, v4, v1}, Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;->onItemLongClick(Landroid/view/ContextMenu;ILcom/huawei/android/FMRadio/ItemHolder;)V

    .line 119
    .end local v0           #contextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v1           #itemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    .end local v2           #position:I
    :cond_0
    return-void
.end method
