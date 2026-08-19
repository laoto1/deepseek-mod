.class Lcom/deepseek/chat/mod/OverlayManager$21$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager$21;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deepseek/chat/mod/OverlayManager$21;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$21;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3003
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$21$1;->this$0:Lcom/deepseek/chat/mod/OverlayManager$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 3006
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->loadSessions()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3300()V

    .line 3007
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->panelOpen:Z
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3400()Z

    move-result v0

    if-eqz v0, :cond_18

    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->currentScreen:I
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3500()I

    move-result v0

    if-nez v0, :cond_18

    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->currentTab:I
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2000()I

    move-result v0

    if-nez v0, :cond_18

    .line 3008
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->showSessionList()V
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2600()V

    .line 3010
    :cond_18
    return-void
.end method
