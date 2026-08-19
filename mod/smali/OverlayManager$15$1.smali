.class Lcom/deepseek/chat/mod/OverlayManager$15$1;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/deepseek/chat/mod/OverlayManager$15;

.field final synthetic val$updateBtn:Landroid/widget/LinearLayout;

.field final synthetic val$updateTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$15;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2165
    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$15$1;->val$updateTv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$15$1;->val$updateBtn:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$15$1;->this$0:Lcom/deepseek/chat/mod/OverlayManager$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2167
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->availableUpdate:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2200()Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    move-result-object v0

    const/16 v1, 0xc

    if-eqz v0, :cond_3f

    .line 2168
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$15$1;->val$updateTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83d\ude80 C\u00f3 b\u1ea3n v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->availableUpdate:Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$2200()Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/deepseek/chat/mod/OverlayManager$UpdateInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2169
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$15$1;->val$updateTv:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2170
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$15$1;->val$updateBtn:Landroid/widget/LinearLayout;

    const v2, -0xfb87a9

    const v3, -0xcb2c67

    const v4, -0xef467f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->makeGradBox(IIII)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v4, v2, v1, v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$3100(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_60

    .line 2172
    :cond_3f
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$15$1;->val$updateTv:Landroid/widget/TextView;

    const-string v2, "\ud83d\udd04 C\u1eadp nh\u1eadt"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2173
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$15$1;->val$updateTv:Landroid/widget/TextView;

    const v2, -0x342a1f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2174
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$15$1;->val$updateBtn:Landroid/widget/LinearLayout;

    const v2, -0x66f0e8d6

    const v3, -0xb8aa97

    const v4, 0x661e293b

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->makeGradBox(IIII)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v4, v2, v1, v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$3100(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2176
    :goto_60
    return-void
.end method
