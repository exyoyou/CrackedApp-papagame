.class public Lcom/kongzue/dialogx/dialogs/f;
.super Lcom/kongzue/dialogx/dialogs/g;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 17
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 12
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 13
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 27
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 29
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {p0, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 47
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 48
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {p0, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {p0, p5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 62
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p0, p3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {p0, p4}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p0, p5}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {p0, p6}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->f1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 8
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 9
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 10
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 3
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 4
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 5
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 6
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 21
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 22
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 23
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 24
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 25
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 40
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 41
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 42
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 43
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 44
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 45
    iput-object p5, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 54
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 55
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 56
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 57
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 58
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 59
    iput-object p5, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 60
    iput-object p6, p0, Lcom/kongzue/dialogx/dialogs/g;->f1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 33
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->y:Z

    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 34
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 35
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 36
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 37
    iput-object p4, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 38
    iput-object p5, p0, Lcom/kongzue/dialogx/dialogs/g;->f1:Ljava/lang/String;

    return-void
.end method

.method public static Q4()Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static R4(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/g;->u4(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static S4(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/f;->t5(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/f;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static q6(III)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/f;-><init>(III)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static r6(IIII)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/f;-><init>(IIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static s6(IIIII)Lcom/kongzue/dialogx/dialogs/f;
    .locals 7

    .line 1
    new-instance v6, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/kongzue/dialogx/dialogs/f;-><init>(IIIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 13
    .line 14
    .line 15
    return-object v6
.end method

.method public static t6(IIIIII)Lcom/kongzue/dialogx/dialogs/f;
    .locals 8

    .line 1
    new-instance v7, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    move v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/kongzue/dialogx/dialogs/f;-><init>(IIIIII)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v7
.end method

.method public static u6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/f;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static v6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kongzue/dialogx/dialogs/f;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static w6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 7

    .line 1
    new-instance v6, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/kongzue/dialogx/dialogs/f;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 13
    .line 14
    .line 15
    return-object v6
.end method

.method public static x6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 8

    .line 1
    new-instance v7, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/kongzue/dialogx/dialogs/f;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v7
.end method

.method public static y6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 7

    .line 1
    new-instance v6, Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/kongzue/dialogx/dialogs/f;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 13
    .line 14
    .line 15
    return-object v6
.end method


# virtual methods
.method public A0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->h:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->h:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->d(Z)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_material_dark:I

    .line 56
    .line 57
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/f;->X2()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    iput-wide v2, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v2, Lcom/kongzue/dialogx/dialogs/g$e;

    .line 70
    .line 71
    invoke-direct {v2, p0, v0}, Lcom/kongzue/dialogx/dialogs/g$e;-><init>(Lcom/kongzue/dialogx/dialogs/g;Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lcom/kongzue/dialogx/dialogs/f;->H5(Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/f;

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public bridge synthetic A3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->l5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic A4(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->n6(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public A5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic B4(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->o6(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public B5(J)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic C2(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->N4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic C4(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->p6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public C5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->R:I

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic D2(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->O4(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic D3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->o5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public D5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->i1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic E2()Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/f;->P4()Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public E5(Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->i1:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/f;->u5(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F5(Lcom/kongzue/dialogx/util/j;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic G3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->r5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public G5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->f1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic H3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->s5(Z)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public H5(Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->f1:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->y5(Z)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic I2(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->T4(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic I3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->t5(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public I5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->l1:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic J2()Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/f;->U4()Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic J3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/f;->u5(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public J5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic K3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->v5(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public K5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->j6(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L2()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic L3(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->w5(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public M2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/g;->e2:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic M3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->x5(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public M5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic N3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->y5(Z)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public N4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public N5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public O2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic O3(J)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/f;->z5(J)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public O4(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public O5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->B:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic P3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->A5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public P4()Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/f;->j6(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public P5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public Q2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic Q3(J)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/f;->B5(J)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Q5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public R2()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic R3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->C5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public R5(ILcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public S5(Lcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic T3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->I5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public T4(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public T5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public U2()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->S:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic U3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->J5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public U4()Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public U5(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public V2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic V3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->K5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public V4()Lcom/kongzue/dialogx/interfaces/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    check-cast v0, Lcom/kongzue/dialogx/interfaces/v;

    .line 4
    .line 5
    return-object v0
.end method

.method public V5(Lcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public W2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic W3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->L5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public W4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->i1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public W5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public X2()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->i:Landroid/widget/EditText;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->f1:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

.method public bridge synthetic X3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->M5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public X4()Lcom/kongzue/dialogx/util/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->a2:Lcom/kongzue/dialogx/util/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public X5(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->T:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public Y2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic Y3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->N5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Y4()Lcom/kongzue/dialogx/interfaces/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    check-cast v0, Lcom/kongzue/dialogx/interfaces/v;

    .line 4
    .line 5
    return-object v0
.end method

.method public Y5(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->W:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public Z2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic Z3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->O5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Z4()Lcom/kongzue/dialogx/interfaces/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    check-cast v0, Lcom/kongzue/dialogx/interfaces/v;

    .line 4
    .line 5
    return-object v0
.end method

.method public Z5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public a3()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic a4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->P5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public a6(ILcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic b4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->Q5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public b6(Lcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public c3()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public c5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->l:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->l:Lcom/kongzue/dialogx/interfaces/i;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lcom/kongzue/dialogx/interfaces/i;->run(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public c6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public d3()Lcom/kongzue/dialogx/interfaces/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->T:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public d5()Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public d6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public e3()Lcom/kongzue/dialogx/interfaces/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->W:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic e4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->T5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e5(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public e6(Lcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public f0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->P:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v3, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 8
    .line 9
    if-ne v0, v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1

    .line 14
    :cond_1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/g;->l2:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    sget-object v3, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 19
    .line 20
    if-ne v0, v3, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/4 v1, 0x0

    .line 24
    :goto_1
    return v1

    .line 25
    :cond_3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q:Z

    .line 26
    .line 27
    return v0
.end method

.method public f3()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public f5(II)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Q:I

    .line 2
    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/dialogs/g;->R:I

    .line 4
    .line 5
    return-object p0
.end method

.method public f6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g5(Z)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->u:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public g6(F)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public h3()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic h4(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->W5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public h6(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    filled-new-array {p1, p1, p1, p1}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic i4(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->X5(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public i6(IIII)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    filled-new-array {p1, p2, p3, p4}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public j3()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic j4(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->Y5(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public j5(Z)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public j6(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public bridge synthetic k4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->Z5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->e2:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public k6(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public l3()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public l5(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public l6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public m5(ILcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public m6(I)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public bridge synthetic n4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->c6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n5(Lcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public n6(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public o3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 2
    .line 3
    return v0
.end method

.method public o5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public o6(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic p3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->b5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p5(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public p6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic q4(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->f6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q5(Lcom/kongzue/dialogx/interfaces/v;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/v<",
            "Lcom/kongzue/dialogx/dialogs/f;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic r3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->c5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic r4(F)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->g6(F)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic s4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->h6(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s5(Z)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->TRUE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;->FALSE:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 7
    .line 8
    :goto_0
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->P:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic t3()Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/f;->d5()Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic t4(IIII)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kongzue/dialogx/dialogs/f;->i6(IIII)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public t5(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic u3(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/f;->e5(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u5(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->k:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public bridge synthetic v3(II)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/f;->f5(II)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public v5(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic w3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->h5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic w4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->j6(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public w5(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->V:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public bridge synthetic x3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->i5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic x4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->k6(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x5(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/f;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->S:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic y3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->j5(Z)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic y4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->l6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y5(Z)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic z3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->k5(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic z4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/f;->m6(I)Lcom/kongzue/dialogx/dialogs/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public z5(J)Lcom/kongzue/dialogx/dialogs/f;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method
