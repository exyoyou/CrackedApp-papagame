.class public Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(ZILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "showGameGifts",
            "topType",
            "moreData"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$i;->a:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput p2, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$y0$i;->c:I

    .line 9
    .line 10
    return-void
.end method
