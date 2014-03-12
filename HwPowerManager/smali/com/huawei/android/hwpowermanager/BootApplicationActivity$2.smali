.class Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;
.super Ljava/lang/Object;
.source "BootApplicationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->contentResolverOnDestory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 580
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 581
    :try_start_0
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 583
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, ifor:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 584
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iget-boolean v2, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    if-eqz v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iget-object v6, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iget v2, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mType:I

    invoke-static {v4, v5, v6, v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertToDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 583
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iget-object v2, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->deleteFromDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 592
    .end local v0           #ifor:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #ifor:I
    .restart local v1       #size:I
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    return-void
.end method
