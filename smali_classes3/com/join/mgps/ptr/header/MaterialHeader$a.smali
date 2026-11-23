.class Lcom/join/mgps/ptr/header/MaterialHeader$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/header/MaterialHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/MaterialHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->b:Lcom/join/mgps/ptr/header/MaterialHeader;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpolatedTime",
            "t"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->b:Lcom/join/mgps/ptr/header/MaterialHeader;

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    sub-float/2addr v0, p1

    .line 6
    invoke-static {p2, v0}, Lcom/join/mgps/ptr/header/MaterialHeader;->g(Lcom/join/mgps/ptr/header/MaterialHeader;F)F

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->b:Lcom/join/mgps/ptr/header/MaterialHeader;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/ptr/header/MaterialHeader;->h(Lcom/join/mgps/ptr/header/MaterialHeader;)Lcom/join/mgps/ptr/header/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->b:Lcom/join/mgps/ptr/header/MaterialHeader;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/join/mgps/ptr/header/MaterialHeader;->f(Lcom/join/mgps/ptr/header/MaterialHeader;)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/high16 v0, 0x437f0000    # 255.0f

    .line 22
    .line 23
    mul-float p2, p2, v0

    .line 24
    .line 25
    float-to-int p2, p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/join/mgps/ptr/header/a;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$a;->b:Lcom/join/mgps/ptr/header/MaterialHeader;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
