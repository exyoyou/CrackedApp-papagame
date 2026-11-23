.class Lcom/join/mgps/fragment/k5$a;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/k5;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/base/decoration/b$a;

.field final synthetic f:Lcom/join/mgps/base/decoration/b$a;

.field final synthetic g:Lcom/join/mgps/fragment/k5;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/k5;Lcom/join/mgps/base/decoration/b$a;Lcom/join/mgps/base/decoration/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$decoration1",
            "val$decoration2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/k5$a;->g:Lcom/join/mgps/fragment/k5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/k5$a;->e:Lcom/join/mgps/base/decoration/b$a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/k5$a;->f:Lcom/join/mgps/base/decoration/b$a;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/b;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/join/mgps/base/decoration/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    rem-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/k5$a;->e:Lcom/join/mgps/base/decoration/b$a;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/k5$a;->f:Lcom/join/mgps/base/decoration/b$a;

    .line 9
    .line 10
    :goto_0
    return-object p1
.end method
