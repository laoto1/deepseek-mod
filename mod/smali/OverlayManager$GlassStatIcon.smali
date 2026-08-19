.class Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GlassStatIcon"
.end annotation


# instance fields
.field private p:Landroid/graphics/Paint;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1448
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1449
    iput p2, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->type:I

    .line 1450
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    .line 1451
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23

    .line 1455
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1456
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->getWidth()I

    move-result v2

    .line 1457
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->getHeight()I

    move-result v3

    .line 1458
    if-lez v2, :cond_307

    if-gtz v3, :cond_15

    goto/16 :goto_307

    .line 1460
    :cond_15
    int-to-float v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v7, v2

    .line 1461
    int-to-float v8, v3

    div-float v13, v8, v2

    .line 1462
    new-instance v3, Landroid/graphics/RectF;

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

    invoke-direct {v3, v4, v5, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1464
    nop

    .line 1465
    iget v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->type:I

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_52

    const v4, -0xef467f

    const v6, -0xfb87a9

    const v9, -0xcb2c67

    const v4, -0xcb2c67

    const v9, -0xef467f

    const v10, -0xfb87a9

    goto :goto_93

    .line 1466
    :cond_52
    iget v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->type:I

    if-ne v4, v15, :cond_69

    const v4, -0xa61f5

    const v6, -0x4bacf7

    const v9, -0x440dc

    const v4, -0x440dc

    const v9, -0xa61f5

    const v10, -0x4bacf7

    goto :goto_93

    .line 1467
    :cond_69
    iget v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_81

    const v4, -0x74a30a

    const v6, -0x92d727

    const v9, -0x587406

    const v4, -0x587406

    const v9, -0x74a30a

    const v10, -0x92d727

    goto :goto_93

    :cond_81
    const v4, -0xc47d0a

    const v6, -0xe2b128

    const v9, -0x9f5a06

    const v4, -0x9f5a06

    const v9, -0xc47d0a

    const v10, -0xe2b128

    .line 1469
    :goto_93
    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1470
    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    move v11, v4

    new-instance v4, Landroid/graphics/LinearGradient;

    move-object/from16 v16, v6

    const/4 v6, 0x0

    move/from16 v17, v11

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v18, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, v16

    move/from16 v14, v17

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v19, 0x40000000    # 2.0f

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1471
    const/high16 v2, 0x41400000    # 12.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1472
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1474
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    const v5, 0x38ffffff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1475
    new-instance v4, Landroid/graphics/RectF;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v16 .. v16}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v16 .. v16}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v16 .. v16}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-direct {v4, v5, v6, v7, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1476
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    iget-object v7, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1478
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1479
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1480
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    const v5, 0x3fb33333    # 1.4f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1481
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1483
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1485
    iget v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->type:I

    const v7, 0x400ccccd    # 2.2f

    const v4, 0x41133333    # 9.2f

    if-nez v2, :cond_205

    .line 1486
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1487
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v3, 0x41180000    # 9.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    sub-float v5, v12, v5

    const/high16 v6, 0x41100000    # 9.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v8

    sub-float v8, v13, v8

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    add-float/2addr v3, v12

    const/high16 v10, 0x40900000    # 4.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v11

    add-float/2addr v11, v13

    invoke-direct {v2, v5, v8, v3, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1488
    const v3, 0x40733333    # 3.8f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1490
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1491
    const v3, 0x40b9999a    # 5.8f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    sub-float v3, v12, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    add-float/2addr v5, v13

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1492
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    sub-float v3, v12, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    add-float/2addr v4, v13

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1493
    const v3, 0x3fcccccd    # 1.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    sub-float v3, v12, v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v10}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    add-float/2addr v4, v13

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1494
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1495
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1497
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1498
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1499
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    const v3, 0x3fd9999a    # 1.7f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1500
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1501
    const/high16 v8, 0x40b00000    # 5.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    sub-float v2, v12, v2

    const v3, 0x404ccccd    # 3.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    sub-float v4, v13, v4

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v5

    add-float/2addr v5, v12

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v3}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    sub-float v3, v13, v3

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    move/from16 v20, v5

    move v5, v3

    move v3, v4

    move/from16 v4, v20

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1502
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v8}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v1

    sub-float v2, v12, v1

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v16 .. v16}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v1

    add-float v3, v13, v1

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v1

    add-float v4, v12, v1

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v16 .. v16}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v1

    add-float v5, v13, v1

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1503
    goto/16 :goto_306

    :cond_205
    iget v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->type:I

    if-ne v2, v15, :cond_250

    .line 1504
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1505
    const v2, 0x40666666    # 3.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    .line 1506
    const v4, 0x40accccd    # 5.4f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    .line 1507
    const/4 v6, -0x1

    :goto_21f
    if-gt v6, v15, :cond_24e

    .line 1508
    const/4 v7, -0x1

    :goto_222
    if-gt v7, v15, :cond_24a

    .line 1509
    int-to-float v8, v7

    mul-float v8, v8, v4

    add-float/2addr v8, v12

    .line 1510
    int-to-float v9, v6

    mul-float v9, v9, v4

    add-float/2addr v9, v13

    .line 1511
    new-instance v10, Landroid/graphics/RectF;

    div-float v11, v2, v19

    sub-float v14, v8, v11

    sub-float v3, v9, v11

    add-float/2addr v8, v11

    add-float/2addr v9, v11

    invoke-direct {v10, v14, v3, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1512
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v5}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v8

    iget-object v9, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    .line 1511
    invoke-virtual {v1, v10, v3, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1508
    add-int/lit8 v7, v7, 0x1

    const/4 v3, -0x1

    goto :goto_222

    .line 1507
    :cond_24a
    add-int/lit8 v6, v6, 0x1

    const/4 v3, -0x1

    goto :goto_21f

    .line 1515
    :cond_24e
    goto/16 :goto_306

    :cond_250
    iget v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b0

    .line 1516
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1517
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1518
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    .line 1519
    const v4, 0x40833333    # 4.1f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    .line 1520
    const/4 v5, 0x0

    :goto_26d
    const/16 v6, 0xa

    if-ge v5, v6, :cond_2a7

    .line 1521
    mul-int/lit8 v6, v5, 0x24

    add-int/lit8 v6, v6, -0x5a

    int-to-float v6, v6

    .line 1522
    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 1523
    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_282

    move v7, v3

    goto :goto_283

    :cond_282
    move v7, v4

    .line 1524
    :goto_283
    float-to-double v7, v7

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v7

    double-to-float v6, v14

    add-float/2addr v6, v12

    .line 1525
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    double-to-float v7, v7

    add-float/2addr v7, v13

    .line 1526
    if-nez v5, :cond_2a1

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2a4

    .line 1527
    :cond_2a1
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1520
    :goto_2a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_26d

    .line 1529
    :cond_2a7
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1530
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1531
    goto :goto_306

    .line 1532
    :cond_2b0
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1533
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v7}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1534
    const v2, 0x4109999a    # 8.6f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    .line 1535
    iget-object v3, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v13, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1537
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1538
    const v2, 0x40a66666    # 5.2f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v2

    sub-float v5, v13, v2

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    move v4, v12

    move v2, v12

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1539
    const/high16 v1, 0x40800000    # 4.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v1}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v1

    add-float v4, v2, v1

    iget-object v6, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    move v5, v3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1541
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1542
    const/high16 v4, 0x3fc00000    # 1.5f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v4}, Lcom/deepseek/chat/mod/OverlayManager;->access$2800(F)F

    move-result v4

    iget-object v5, v0, Lcom/deepseek/chat/mod/OverlayManager$GlassStatIcon;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1544
    :goto_306
    return-void

    .line 1458
    :cond_307
    :goto_307
    return-void
.end method
