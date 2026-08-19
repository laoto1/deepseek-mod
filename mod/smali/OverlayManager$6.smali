.class Lcom/deepseek/chat/mod/OverlayManager$6;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->showUpdateDialog(Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelBtn:Landroid/widget/TextView;

.field final synthetic val$decor:Landroid/view/ViewGroup;

.field final synthetic val$info:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

.field final synthetic val$overlayBg:Landroid/widget/FrameLayout;

.field final synthetic val$updateBtn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 919
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$updateBtn:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$cancelBtn:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$info:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    iput-object p4, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$decor:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$overlayBg:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 921
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$updateBtn:Landroid/widget/TextView;

    const-string v0, "\u23f3 \u0110ang t\u1ea3i..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$updateBtn:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 923
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 924
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$info:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    iget-object p1, p1, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->apkDownloadUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deepseek-mod-v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$info:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    iget-object v1, v1, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/deepseek/chat/mod/OverlayManager$6$1;

    iget-object v2, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$decor:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$6;->val$overlayBg:Landroid/widget/FrameLayout;

    invoke-direct {v1, p0, v2, v3}, Lcom/deepseek/chat/mod/OverlayManager$6$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$6;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->downloadAndInstallApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    invoke-static {p1, v0, v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$2500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 929
    return-void
.end method
