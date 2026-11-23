.class Lcom/join/mgps/fragment/j3$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field final synthetic e:Lcom/join/mgps/fragment/j3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/j3;Ljava/lang/Object;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "object",
            "type",
            "id",
            "uid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j3$g;->e:Lcom/join/mgps/fragment/j3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/fragment/j3$g;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/fragment/j3$g;->b:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/join/mgps/fragment/j3$g;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/join/mgps/fragment/j3$g;->d:I

    .line 13
    .line 14
    return-void
.end method
