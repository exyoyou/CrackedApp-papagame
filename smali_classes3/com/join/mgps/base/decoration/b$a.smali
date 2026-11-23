.class public Lcom/join/mgps/base/decoration/b$a;
.super Lcom/join/mgps/base/decoration/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/base/decoration/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private e:Landroid/graphics/Paint;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/b$b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x1000000

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/base/decoration/b$a;->e:Landroid/graphics/Paint;

    .line 15
    .line 16
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "leftZ",
            "topZ",
            "rightZ",
            "bottomZ"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/decoration/b$a;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    int-to-float v3, p2

    .line 9
    int-to-float v4, p3

    .line 10
    int-to-float v5, p4

    .line 11
    int-to-float v6, p5

    .line 12
    iget-object v7, p0, Lcom/join/mgps/base/decoration/b$a;->e:Landroid/graphics/Paint;

    .line 13
    .line 14
    move-object v2, p1

    .line 15
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
