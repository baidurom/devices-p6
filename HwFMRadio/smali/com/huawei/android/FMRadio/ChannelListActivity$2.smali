.class Lcom/huawei/android/FMRadio/ChannelListActivity$2;
.super Ljava/lang/Object;
.source "ChannelListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/ChannelListActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/ChannelListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$2;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 295
    packed-switch p2, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$2;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->startAutoTune(Z)V

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$2;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->startAutoTune(Z)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
