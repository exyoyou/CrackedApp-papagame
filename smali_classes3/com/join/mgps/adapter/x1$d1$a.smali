.class Lcom/join/mgps/adapter/x1$d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1$d1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/adapter/x1$d1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1$d1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$d1$a;->b:Lcom/join/mgps/adapter/x1$d1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$d1$a;->b:Lcom/join/mgps/adapter/x1$d1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$d1;->e:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$d1$a;->b:Lcom/join/mgps/adapter/x1$d1;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/join/mgps/adapter/x1$d1;->e:Landroid/widget/TextView;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-wide/16 v3, 0x1

    .line 31
    .line 32
    add-long/2addr v0, v3

    .line 33
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ""

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$d1$a;->b:Lcom/join/mgps/adapter/x1$d1;

    .line 49
    .line 50
    iget-object v0, p1, Lcom/join/mgps/adapter/x1$d1;->f:Lcom/join/mgps/adapter/x1;

    .line 51
    .line 52
    iget p1, p1, Lcom/join/mgps/adapter/x1$d1;->c:I

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/x1;->o(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/adapter/x1$d1$a;->b:Lcom/join/mgps/adapter/x1$d1;

    .line 58
    .line 59
    iget-object v0, p1, Lcom/join/mgps/adapter/x1$d1;->f:Lcom/join/mgps/adapter/x1;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/join/mgps/adapter/x1;->i:Lcom/join/mgps/adapter/x1$p1;

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-object v1, p1, Lcom/join/mgps/adapter/x1$d1;->b:Lcom/join/mgps/dto/CommentBaseBean;

    .line 66
    .line 67
    iget p1, p1, Lcom/join/mgps/adapter/x1$d1;->c:I

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-interface {v0, v1, p1, v2}, Lcom/join/mgps/adapter/x1$p1;->onPraise(Lcom/join/mgps/dto/CommentBaseBean;II)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method
