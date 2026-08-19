.class Lcom/deepseek/chat/mod/OverlayManager$16;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepseek/chat/mod/OverlayManager;->showSessionList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bodyContainer:Landroid/widget/FrameLayout;

.field final synthetic val$hdrDivider:Landroid/view/View;

.field final synthetic val$headerContainer:Landroid/widget/FrameLayout;

.field final synthetic val$iconHistory:Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;

.field final synthetic val$iconNsfw:Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;

.field final synthetic val$tabBtn:Landroid/widget/LinearLayout;

.field final synthetic val$tabBtnText:Landroid/widget/TextView;

.field final synthetic val$titleChatAi:Landroid/widget/TextView;

.field final synthetic val$titleNsfw:Landroid/widget/TextView;

.field final synthetic val$topBannerBg:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2216
    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$iconHistory:Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;

    iput-object p2, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$iconNsfw:Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;

    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$titleChatAi:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$titleNsfw:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$tabBtn:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$tabBtnText:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$topBannerBg:Landroid/graphics/drawable/GradientDrawable;

    iput-object p8, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$headerContainer:Landroid/widget/FrameLayout;

    iput-object p9, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$hdrDivider:Landroid/view/View;

    iput-object p10, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$bodyContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16

    .line 2218
    # getter for: Lcom/deepseek/chat/mod/OverlayManager;->currentTab:I
    invoke-static {}, Lcom/deepseek/chat/mod/OverlayManager;->access$3200()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 2219
    :goto_b
    if-ne p1, v0, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 2220
    :goto_10
    if-eqz v2, :cond_15

    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$iconHistory:Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;

    goto :goto_17

    :cond_15
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$iconNsfw:Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;

    .line 2221
    :goto_17
    if-eqz v2, :cond_1c

    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$iconNsfw:Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;

    goto :goto_1e

    :cond_1c
    iget-object v4, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$iconHistory:Lcom/deepseek/chat/mod/OverlayManager$GlassHistoryIcon;

    .line 2222
    :goto_1e
    if-eqz v2, :cond_23

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$titleChatAi:Landroid/widget/TextView;

    goto :goto_25

    :cond_23
    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$titleNsfw:Landroid/widget/TextView;

    .line 2223
    :goto_25
    if-eqz v2, :cond_2a

    iget-object v6, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$titleNsfw:Landroid/widget/TextView;

    goto :goto_2c

    :cond_2a
    iget-object v6, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$titleChatAi:Landroid/widget/TextView;

    .line 2225
    :goto_2c
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2226
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2227
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2228
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2231
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2232
    const v8, 0x3f19999a    # 0.6f

    invoke-virtual {v4, v8}, Landroid/view/View;->setScaleX(F)V

    .line 2233
    invoke-virtual {v4, v8}, Landroid/view/View;->setScaleY(F)V

    .line 2234
    const/16 v9, 0x24

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dp(I)I
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$3300(I)I

    move-result v10

    if-eqz v2, :cond_57

    goto :goto_58

    :cond_57
    neg-int v10, v10

    :goto_58
    int-to-float v10, v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 2236
    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2237
    const/16 v10, 0x32

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dp(I)I
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$3300(I)I

    move-result v11

    if-eqz v2, :cond_68

    goto :goto_69

    :cond_68
    neg-int v11, v11

    :goto_69
    int-to-float v11, v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 2240
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 2241
    invoke-virtual {v11, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 2242
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dp(I)I
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$3300(I)I

    move-result v9

    if-eqz v2, :cond_7c

    neg-int v9, v9

    :cond_7c
    int-to-float v9, v9

    invoke-virtual {v11, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    .line 2243
    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 2244
    const-wide/16 v11, 0x12c

    invoke-virtual {v8, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v9, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 2245
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/deepseek/chat/mod/OverlayManager$16$1;

    invoke-direct {v9, p0, v3}, Lcom/deepseek/chat/mod/OverlayManager$16$1;-><init>(Lcom/deepseek/chat/mod/OverlayManager$16;Landroid/view/View;)V

    .line 2246
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2251
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2253
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2254
    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2255
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dp(I)I
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$3300(I)I

    move-result v8

    if-eqz v2, :cond_b5

    neg-int v8, v8

    :cond_b5
    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2256
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 2257
    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v8, Lcom/deepseek/chat/mod/OverlayManager$16$2;

    invoke-direct {v8, p0, v5}, Lcom/deepseek/chat/mod/OverlayManager$16$2;-><init>(Lcom/deepseek/chat/mod/OverlayManager$16;Landroid/view/View;)V

    .line 2258
    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2263
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2266
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2267
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2268
    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2269
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2270
    const-wide/16 v8, 0x154

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    const v10, 0x3f99999a    # 1.2f

    invoke-direct {v5, v10}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 2271
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2272
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2274
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2275
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2276
    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2277
    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const v5, 0x3f8ccccd    # 1.1f

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 2278
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2279
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2282
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$tabBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2283
    const v4, 0x3f59999a    # 0.85f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2284
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 2285
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/deepseek/chat/mod/OverlayManager$16$3;

    iget-object v5, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$tabBtnText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$tabBtn:Landroid/widget/LinearLayout;

    invoke-direct {v4, p0, v5, v2, v6}, Lcom/deepseek/chat/mod/OverlayManager$16$3;-><init>(Lcom/deepseek/chat/mod/OverlayManager$16;Landroid/widget/TextView;ZLandroid/widget/LinearLayout;)V

    .line 2286
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 2295
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2298
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$topBannerBg:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v2, :cond_16b

    .line 2299
    new-array v4, v4, [I

    const v8, -0x46e3e4

    aput v8, v4, v1

    const v8, -0x1177ecc9

    aput v8, v4, v0

    const v8, -0x44b3fae7

    aput v8, v4, v6

    const v8, 0x66140810

    aput v8, v4, v5

    goto :goto_181

    .line 2300
    :cond_16b
    new-array v4, v4, [I

    const v8, -0xdbb74b

    aput v8, v4, v1

    const v8, -0x11e1d18e

    aput v8, v4, v0

    const v8, -0x44e8e1b2

    aput v8, v4, v6

    const v8, 0x66121438

    aput v8, v4, v5

    .line 2298
    :goto_181
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 2301
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$headerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2303
    iget-object v3, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$hdrDivider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 2304
    if-eqz v2, :cond_1a2

    .line 2305
    new-array v4, v5, [I

    const v5, -0xbc0a2

    aput v5, v4, v1

    const v5, -0x77048e7b

    aput v5, v4, v0

    aput v1, v4, v6

    goto :goto_1b0

    .line 2306
    :cond_1a2
    new-array v4, v5, [I

    const v5, -0xc47d0a

    aput v5, v4, v1

    const v5, -0x779c990f

    aput v5, v4, v0

    aput v1, v4, v6

    .line 2304
    :goto_1b0
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 2309
    # setter for: Lcom/deepseek/chat/mod/OverlayManager;->currentTab:I
    invoke-static {p1}, Lcom/deepseek/chat/mod/OverlayManager;->access$3202(I)I

    .line 2310
    iget-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$bodyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/16 v0, 0xf

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dp(I)I
    invoke-static {v0}, Lcom/deepseek/chat/mod/OverlayManager;->access$3300(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/deepseek/chat/mod/OverlayManager$16$4;

    iget-object v1, p0, Lcom/deepseek/chat/mod/OverlayManager$16;->val$bodyContainer:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/deepseek/chat/mod/OverlayManager$16$4;-><init>(Lcom/deepseek/chat/mod/OverlayManager$16;Landroid/widget/FrameLayout;Z)V

    .line 2311
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2323
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2324
    return-void
.end method
