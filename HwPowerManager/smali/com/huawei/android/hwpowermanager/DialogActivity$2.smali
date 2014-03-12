.class Lcom/huawei/android/hwpowermanager/DialogActivity$2;
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
    .line 80
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 85
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/DialogActivity;->mSelect:Z
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/DialogActivity;->access$000(Lcom/huawei/android/hwpowermanager/DialogActivity;)Z

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/huawei/android/hwpowermanager/DialogActivity;->dealSharedPreference(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/huawei/android/hwpowermanager/DialogActivity;->access$100(Lcom/huawei/android/hwpowermanager/DialogActivity;ZZ)V

    .line 87
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/DialogActivity;->finish()V

    .line 88
    return-void
.end method
