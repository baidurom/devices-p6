.class Lcom/android/internal/policy/impl/PhoneWindowManager$22;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4749
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4752
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNvForHwThemeManager:Z

    if-eqz v3, :cond_4

    .line 4753
    invoke-static {}, Lcom/android/internal/policy/impl/HwThemeManagerNative;->readNv()Z

    move-result v1

    .line 4754
    .local v1, isreadNv:Z
    sget-object v2, Lcom/android/internal/policy/impl/HwThemeManagerNative;->m_nv:Ljava/lang/String;

    .line 4755
    .local v2, m_nv:Ljava/lang/String;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isreadNv m_nv "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    const-string v0, "/system/themes/Taste.hwt"

    .line 4757
    .local v0, hwThemePath:Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 4758
    const-string v3, "pink"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4759
    const-string v0, "/system/themes/Elegant.hwt"

    .line 4765
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->setHwThemeNv(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)V

    .line 4766
    const-string v3, "WindowManager"

    const-string v4, "setHwThemeNvdone"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    .end local v0           #hwThemePath:Ljava/lang/String;
    .end local v1           #isreadNv:Z
    .end local v2           #m_nv:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSettings()V

    .line 4778
    return-void

    .line 4760
    .restart local v0       #hwThemePath:Ljava/lang/String;
    .restart local v1       #isreadNv:Z
    .restart local v2       #m_nv:Ljava/lang/String;
    :cond_1
    const-string v3, "white"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4761
    const-string v0, "/system/themes/Pure.hwt"

    goto :goto_0

    .line 4762
    :cond_2
    const-string v3, "black"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4763
    const-string v0, "/system/themes/Taste.hwt"

    goto :goto_0

    .line 4768
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->setHwThemeNv(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)V

    goto :goto_1

    .line 4773
    .end local v0           #hwThemePath:Ljava/lang/String;
    .end local v1           #isreadNv:Z
    .end local v2           #m_nv:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$22;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->setDefaultHwTheme()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_1
.end method
