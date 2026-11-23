.class Lcom/join/mgps/control/RhythmLayout$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/control/RhythmLayout$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/control/RhythmLayout$b$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/control/RhythmLayout$b$a;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$localList",
            "val$finalToPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->d:Lcom/join/mgps/control/RhythmLayout$b$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->b:Ljava/util/List;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->d:Lcom/join/mgps/control/RhythmLayout$b$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/control/RhythmLayout;->e(Lcom/join/mgps/control/RhythmLayout;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/join/mgps/control/RhythmLayout;->h(Lcom/join/mgps/control/RhythmLayout;ILjava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->d:Lcom/join/mgps/control/RhythmLayout$b$a;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 21
    .line 22
    iget v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->c:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    const/16 v4, 0x1f4

    .line 27
    .line 28
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/join/mgps/control/RhythmLayout;->s(IIIZ)Landroid/animation/Animator;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b$a$a;->d:Lcom/join/mgps/control/RhythmLayout$b$a;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 36
    .line 37
    const-wide/16 v1, 0xa

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/join/mgps/control/RhythmLayout;->i(Lcom/join/mgps/control/RhythmLayout;J)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
