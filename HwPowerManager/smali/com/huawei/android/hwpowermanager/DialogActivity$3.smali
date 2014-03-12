.class Lcom/huawei/android/hwpowermanager/DialogActivity$3;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/DialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/DialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$3;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "huawei.intent.action.SMART_POWER_CLEAR_APPS_ACTION_DELAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, action:Landroid/content/Intent;
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$3;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    invoke-virtual {v1, v0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$3;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$3;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/DialogActivity;->mSelect:Z
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/DialogActivity;->access$000(Lcom/huawei/android/hwpowermanager/DialogActivity;)Z

    move-result v2

    const/4 v3, 0x1

    #calls: Lcom/huawei/android/hwpowermanager/DialogActivity;->dealSharedPreference(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/huawei/android/hwpowermanager/DialogActivity;->access$100(Lcom/huawei/android/hwpowermanager/DialogActivity;ZZ)V

    .line 76
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$3;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/DialogActivity;->finish()V

    .line 78
    return-void
.end method
