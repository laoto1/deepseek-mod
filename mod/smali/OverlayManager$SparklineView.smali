.class Lcom/deepseek/chat/mod/OverlayManager$SparklineView;
.super Landroid/view/View;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepseek/chat/mod/OverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SparklineView"
.end annotation


# instance fields
.field private color:I

.field private dotPaint:Landroid/graphics/Paint;

.field private fillPaint:Landroid/graphics/Paint;

.field private glowDotPaint:Landroid/graphics/Paint;

.field private glowLinePaint:Landroid/graphics/Paint;

.field private linePaint:Landroid/graphics/Paint;

.field private points:[F

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[FI)V
    .registers 5

    .line 1316
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1317
    iput p2, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->color:I

    .line 1318
    iput-object p3, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->points:[F

    .line 1319
    iput p4, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->type:I

    .line 1320
    invoke-direct {p0}, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->initPaints()V

    .line 1321
    return-void
.end method

.method private initPaints()V
    .registers 5

    .line 1324
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->linePaint:Landroid/graphics/Paint;

    .line 1325
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->linePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->color:I

    const v3, -0x55000001

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1326
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1327
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->linePaint:Landroid/graphics/Paint;

    const v2, 0x3fe66666    # 1.8f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1328
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1329
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->linePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowLinePaint:Landroid/graphics/Paint;

    .line 1332
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->color:I

    const v3, 0x22ffffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1333
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1334
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v2}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1335
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1336
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1338
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->fillPaint:Landroid/graphics/Paint;

    .line 1339
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1341
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->dotPaint:Landroid/graphics/Paint;

    .line 1342
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->dotPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1343
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->dotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1345
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowDotPaint:Landroid/graphics/Paint;

    .line 1346
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowDotPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->color:I

    const v2, 0x66ffffff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1347
    iget-object v0, p0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowDotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1348
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 32

    .line 1352
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1353
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->getWidth()I

    move-result v2

    .line 1354
    invoke-virtual {v0}, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->getHeight()I

    move-result v3

    .line 1355
    if-lez v2, :cond_158

    if-gtz v3, :cond_15

    goto/16 :goto_158

    .line 1357
    :cond_15
    iget-object v4, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->points:[F

    .line 1358
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_21

    array-length v10, v4

    if-ge v10, v7, :cond_7c

    .line 1359
    :cond_21
    iget v4, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->type:I

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const v13, 0x3d4ccccd    # 0.05f

    const/16 v14, 0x8

    if-nez v4, :cond_55

    .line 1360
    new-array v4, v14, [F

    aput v13, v4, v8

    const v13, 0x3d75c28f    # 0.06f

    aput v13, v4, v9

    const v13, 0x3da3d70a    # 0.08f

    aput v13, v4, v7

    const v7, 0x3e23d70a    # 0.16f

    aput v7, v4, v6

    const v7, 0x3ed70a3d    # 0.42f

    aput v7, v4, v5

    const v7, 0x3ea3d70a    # 0.32f

    aput v7, v4, v12

    const v7, 0x3f428f5c    # 0.76f

    aput v7, v4, v11

    const v7, 0x3f1eb852    # 0.62f

    aput v7, v4, v10

    goto :goto_7c

    .line 1362
    :cond_55
    new-array v4, v14, [F

    aput v13, v4, v8

    const v13, 0x3d8f5c29    # 0.07f

    aput v13, v4, v9

    const v13, 0x3db851ec    # 0.09f

    aput v13, v4, v7

    const v7, 0x3e4ccccd    # 0.2f

    aput v7, v4, v6

    const v7, 0x3ef5c28f    # 0.48f

    aput v7, v4, v5

    const v7, 0x3eb851ec    # 0.36f

    aput v7, v4, v12

    const v7, 0x3f51eb85    # 0.82f

    aput v7, v4, v11

    const v7, 0x3f333333    # 0.7f

    aput v7, v4, v10

    .line 1366
    :cond_7c
    :goto_7c
    array-length v7, v4

    .line 1367
    int-to-float v2, v2

    add-int/lit8 v10, v7, -0x1

    int-to-float v10, v10

    div-float v10, v2, v10

    .line 1368
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 1369
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 1371
    const/high16 v13, 0x41400000    # 12.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v13}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v13

    .line 1372
    const/high16 v19, 0x40800000    # 4.0f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v19 .. v19}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v14

    .line 1373
    int-to-float v3, v3

    sub-float v13, v3, v13

    sub-float v28, v13, v14

    .line 1375
    sub-float v29, v3, v14

    aget v13, v4, v8

    mul-float v13, v13, v28

    sub-float v13, v29, v13

    .line 1376
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1377
    invoke-virtual {v12, v14, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1378
    invoke-virtual {v12, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1380
    nop

    :goto_b1
    if-ge v9, v7, :cond_e8

    .line 1381
    add-int/lit8 v13, v9, -0x1

    int-to-float v14, v13

    mul-float v14, v14, v10

    .line 1382
    aget v13, v4, v13

    mul-float v13, v13, v28

    sub-float v13, v29, v13

    .line 1383
    int-to-float v15, v9

    mul-float v16, v15, v10

    .line 1384
    aget v15, v4, v9

    mul-float v15, v15, v28

    sub-float v15, v29, v15

    .line 1386
    add-float v14, v14, v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v14, v14, v17

    .line 1387
    move-object/from16 v17, v12

    move v12, v14

    move-object/from16 v18, v17

    move/from16 v17, v15

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1388
    move v14, v13

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v12

    move v13, v12

    move-object/from16 v12, v18

    move/from16 v18, v16

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1380
    add-int/lit8 v9, v9, 0x1

    goto :goto_b1

    .line 1391
    :cond_e8
    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1392
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 1394
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->fillPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/LinearGradient;

    iget v9, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->color:I

    const v13, 0x30ffffff

    and-int/2addr v9, v13

    iget v13, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->color:I

    const v14, 0xaffffff

    and-int/2addr v13, v14

    filled-new-array {v9, v13, v8}, [I

    move-result-object v25

    new-array v6, v6, [F

    fill-array-data v6, :array_15a

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, v3

    move-object/from16 v26, v6

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1399
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1400
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1401
    iget-object v2, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1403
    nop

    :goto_12b
    if-ge v5, v7, :cond_157

    .line 1404
    aget v2, v4, v5

    const v3, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_154

    .line 1405
    int-to-float v2, v5

    mul-float v2, v2, v10

    .line 1406
    aget v3, v4, v5

    mul-float v3, v3, v28

    sub-float v3, v29, v3

    .line 1407
    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static/range {v19 .. v19}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->glowDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1408
    const v6, 0x3fe66666    # 1.8f

    # invokes: Lcom/deepseek/chat/mod/OverlayManager;->dpF(F)F
    invoke-static {v6}, Lcom/deepseek/chat/mod/OverlayManager;->access$1700(F)F

    move-result v6

    iget-object v8, v0, Lcom/deepseek/chat/mod/OverlayManager$SparklineView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1403
    :cond_154
    add-int/lit8 v5, v5, 0x1

    goto :goto_12b

    .line 1411
    :cond_157
    return-void

    .line 1355
    :cond_158
    :goto_158
    return-void

    nop

    :array_15a
    .array-data 4
        0x3e19999a    # 0.15f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method
