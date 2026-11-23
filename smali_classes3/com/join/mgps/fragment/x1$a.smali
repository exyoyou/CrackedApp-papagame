.class Lcom/join/mgps/fragment/x1$a;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/x1;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/base/decoration/b$a;

.field final synthetic f:Lcom/join/mgps/fragment/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/x1;Lcom/join/mgps/base/decoration/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$colorDecoration"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/x1$a;->f:Lcom/join/mgps/fragment/x1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/x1$a;->e:Lcom/join/mgps/base/decoration/b$a;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/b;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object p1, p0, Lcom/join/mgps/fragment/x1$a;->e:Lcom/join/mgps/base/decoration/b$a;

    .line 2
    .line 3
    return-object p1
.end method
