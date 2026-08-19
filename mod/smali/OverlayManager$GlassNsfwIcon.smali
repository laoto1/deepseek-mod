.class Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlassNsfwIcon"
.end annotation


# instance fields
.field private p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1388
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1389
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    .line 1390
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    .line 1394
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1395
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->getWidth()I

    move-result v2

    .line 1396
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->getHeight()I

    move-result v3

    .line 1397
    if-lez v2, :cond_21b

    if-gtz v3, :cond_15

    goto/16 :goto_21b

    .line 1399
    :cond_15
    int-to-float v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v13, v7, v2

    .line 1400
    int-to-float v8, v3

    div-float v3, v8, v2

    .line 1401
    new-instance v12, Landroid/graphics/RectF;

    const/high16 v14, 0x3f800000    # 1.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    sub-float v6, v7, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v9

    sub-float v9, v8, v9

    invoke-direct {v12, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1403
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1404
    iget-object v15, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const v10, -0x60edc7

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v9, -0x1ee2b8

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1405
    const/high16 v4, 0x41400000    # 12.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v5, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1406
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1408
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    const v6, 0x40ffffff    # 7.9999995f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1409
    new-instance v5, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v8

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v9

    sub-float/2addr v7, v9

    invoke-direct {v5, v6, v8, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1410
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v7

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1412
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1413
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    const v6, -0x48e7b

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1414
    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    const/high16 v6, 0x3fc00000    # 1.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1415
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    iget-object v7, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v5, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1417
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1418
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1420
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 1421
    nop

    .line 1422
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    add-float/2addr v3, v4

    .line 1423
    const/high16 v4, 0x41280000    # 10.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    sub-float v5, v3, v5

    invoke-virtual {v15, v13, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1424
    const/high16 v5, 0x40900000    # 4.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v7

    add-float v16, v13, v7

    const/high16 v7, 0x40c00000    # 6.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v7

    sub-float v17, v3, v7

    const/high16 v7, 0x41080000    # 8.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v8

    add-float v18, v13, v8

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v8

    sub-float v19, v3, v8

    const/high16 v8, 0x40f00000    # 7.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v9

    add-float v20, v13, v9

    const/high16 v9, 0x40800000    # 4.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v10

    add-float v21, v3, v10

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1425
    const/high16 v22, 0x40d00000    # 6.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v22 .. v22}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v10

    add-float v16, v13, v10

    const/high16 v10, 0x41100000    # 9.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v11

    add-float v17, v3, v11

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v22 .. v22}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v11

    sub-float v18, v13, v11

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v10

    add-float v19, v3, v10

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v8

    sub-float v20, v13, v8

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v8

    add-float v21, v3, v8

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1426
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v7

    sub-float v16, v13, v7

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v7

    sub-float v17, v3, v7

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v7

    sub-float v18, v13, v7

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    sub-float v19, v3, v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    sub-float v20, v13, v5

    const/high16 v5, 0x40e00000    # 7.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    sub-float v21, v3, v5

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1427
    const/high16 v5, 0x40200000    # 2.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    sub-float v16, v13, v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v9}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    sub-float v17, v3, v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    sub-float v18, v13, v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    sub-float v19, v3, v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    add-float v20, v13, v2

    const/high16 v2, 0x40600000    # 3.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    sub-float v21, v3, v5

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1428
    const/high16 v5, 0x40400000    # 3.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    add-float v9, v13, v6

    const/high16 v6, 0x40a00000    # 5.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    sub-float v10, v3, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v14}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    add-float v11, v13, v6

    const/high16 v6, 0x41000000    # 8.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    sub-float v12, v3, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    sub-float v14, v3, v4

    move-object v8, v15

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1429
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 1430
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1432
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    const/16 v6, -0x1b1a

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1433
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 1434
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    sub-float v4, v3, v4

    invoke-virtual {v8, v13, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1435
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    add-float v9, v13, v4

    const/high16 v4, 0x3f000000    # 0.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    sub-float v10, v3, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    add-float v11, v13, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    add-float v12, v3, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v22 .. v22}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    add-float v14, v3, v6

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1436
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    sub-float v9, v13, v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    add-float v10, v3, v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    sub-float v11, v13, v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    sub-float v12, v3, v2

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    sub-float v14, v3, v2

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1437
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 1438
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassNsfwIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1439
    return-void

    .line 1397
    :cond_21b
    :goto_21b
    return-void
.end method
