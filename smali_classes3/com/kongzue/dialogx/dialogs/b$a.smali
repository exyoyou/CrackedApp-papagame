.class Lcom/kongzue/dialogx/dialogs/b$a;
.super Lcom/kongzue/dialogx/interfaces/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/b;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/b;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$a;->a:Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/b$a;->a:Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->c:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/dialogs/b;->f4(Lcom/kongzue/dialogx/dialogs/b;F)F

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "#TouchDown: "

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b$a;->a:Lcom/kongzue/dialogx/dialogs/b;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/b;->e4(Lcom/kongzue/dialogx/dialogs/b;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/b;->g4(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
