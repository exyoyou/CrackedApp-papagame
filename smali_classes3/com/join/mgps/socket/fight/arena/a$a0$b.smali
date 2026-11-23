.class Lcom/join/mgps/socket/fight/arena/a$a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/socket/fight/arena/a$a0;->l(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/socket/fight/arena/a$a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/socket/fight/arena/a$a0;)V
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
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a$a0;->c(Lcom/join/mgps/socket/fight/arena/a$a0;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/join/mgps/dto/ArchiveBean;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/join/mgps/socket/fight/arena/a$a0;->b(Lcom/join/mgps/socket/fight/arena/a$a0;Lcom/join/mgps/dto/ArchiveBean;)Lcom/join/mgps/dto/ArchiveBean;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a$a0;->f(Lcom/join/mgps/socket/fight/arena/a$a0;)Landroid/widget/ImageView;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    const-string v1, ""

    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/a$y;->onNetArchiveSelected(Lcom/join/mgps/dto/ArchiveBean;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a$a0;->e(Lcom/join/mgps/socket/fight/arena/a$a0;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "/"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a$a0;->a(Lcom/join/mgps/socket/fight/arena/a$a0;)Lcom/join/mgps/dto/ArchiveBean;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveBean;->getRecordFile()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/a;->a(Lcom/join/mgps/socket/fight/arena/a;)Lcom/join/mgps/socket/fight/arena/a$y;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/join/mgps/socket/fight/arena/a$a0;->a(Lcom/join/mgps/socket/fight/arena/a$a0;)Lcom/join/mgps/dto/ArchiveBean;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v0, v1, p1}, Lcom/join/mgps/socket/fight/arena/a$y;->onNetArchiveSelected(Lcom/join/mgps/dto/ArchiveBean;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/socket/fight/arena/a$a0$b;->b:Lcom/join/mgps/socket/fight/arena/a$a0;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/join/mgps/socket/fight/arena/a$a0;->y:Lcom/join/mgps/socket/fight/arena/a;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/a;->w()V

    .line 102
    .line 103
    .line 104
    return-void
.end method
