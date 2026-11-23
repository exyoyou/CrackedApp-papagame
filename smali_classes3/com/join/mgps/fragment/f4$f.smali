.class Lcom/join/mgps/fragment/f4$f;
.super Lcom/facebook/drawee/controller/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f4;->j0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/fragment/f4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$num"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f4$f;->d:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/f4$f;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "throwable"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/b;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$f;->d:Lcom/join/mgps/fragment/f4;

    .line 5
    .line 6
    iget p2, p0, Lcom/join/mgps/fragment/f4$f;->c:I

    .line 7
    .line 8
    add-int/lit8 p2, p2, -0x1

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/f4;->P(Lcom/join/mgps/fragment/f4;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo",
            "animatable"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/b;->onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$f;->d:Lcom/join/mgps/fragment/f4;

    .line 5
    .line 6
    iget p2, p0, Lcom/join/mgps/fragment/f4$f;->c:I

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/f4;->O(Lcom/join/mgps/fragment/f4;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$f;->d:Lcom/join/mgps/fragment/f4;

    .line 12
    .line 13
    iget p2, p0, Lcom/join/mgps/fragment/f4$f;->c:I

    .line 14
    .line 15
    add-int/lit8 p2, p2, -0x1

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/f4;->P(Lcom/join/mgps/fragment/f4;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
