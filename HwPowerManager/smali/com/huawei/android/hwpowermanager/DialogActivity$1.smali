.class Lcom/huawei/android/hwpowermanager/DialogActivity$1;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 52
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/DialogActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/DialogActivity;

    #setter for: Lcom/huawei/android/hwpowermanager/DialogActivity;->mSelect:Z
    invoke-static {v0, p2}, Lcom/huawei/android/hwpowermanager/DialogActivity;->access$002(Lcom/huawei/android/hwpowermanager/DialogActivity;Z)Z

    .line 58
    return-void
.end method
