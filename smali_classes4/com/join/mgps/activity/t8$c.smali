.class Lcom/join/mgps/activity/t8$c;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/t8;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/join/mgps/activity/t8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/t8;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$recomGridDividerColor",
            "val$recomGridDividerW"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/t8$c;->g:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/t8$c;->e:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/t8$c;->f:I

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t8$c;->g:Lcom/join/mgps/activity/t8;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/t8;->X(Lcom/join/mgps/activity/t8;)Lcom/join/mgps/adapter/f6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lcom/join/mgps/adapter/f6;->m0(Ljava/util/List;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-gez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/join/mgps/activity/t8$c;->e:I

    .line 25
    .line 26
    iput v1, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 27
    .line 28
    rem-int/lit8 p1, p1, 0x2

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget p1, p0, Lcom/join/mgps/activity/t8$c;->f:I

    .line 33
    .line 34
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget p1, p0, Lcom/join/mgps/activity/t8$c;->f:I

    .line 38
    .line 39
    iput p1, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 40
    .line 41
    :goto_0
    return-object v0
.end method
