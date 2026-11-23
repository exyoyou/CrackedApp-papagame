.class public Lcom/kongzue/dialogx/dialogs/h;
.super Lcom/kongzue/dialogx/dialogs/g;
.source "SourceFile"


# static fields
.field public static final I2:I = 0x64


# instance fields
.field protected A2:Landroid/widget/BaseAdapter;

.field protected B2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected C2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected D2:Z

.field private E2:F

.field private F2:J

.field private G2:[I

.field private H2:[Ljava/lang/CharSequence;

.field protected m2:Lcom/kongzue/dialogx/dialogs/h;

.field protected n2:Z

.field protected o2:I

.field protected p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

.field protected q2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected r2:Z

.field protected s2:Lcom/kongzue/dialogx/interfaces/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/m<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected t2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected u2:Lcom/kongzue/dialogx/util/k;

.field protected v2:Lcom/kongzue/dialogx/interfaces/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected w2:Lcom/kongzue/dialogx/interfaces/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/u<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected x2:Lcom/kongzue/dialogx/interfaces/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/n<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected y2:Lcom/kongzue/dialogx/util/views/DialogListView;

.field protected z2:Lcom/kongzue/dialogx/util/TextInfo;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/g;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/h;->n2:Z

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 11
    .line 12
    sget-object v1, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->NONE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/h;->p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/h;->r2:Z

    .line 18
    .line 19
    new-instance v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/h;->t2:Ljava/util/Map;

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/h;->D2:Z

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/kongzue/dialogx/dialogs/h;->F2:J

    .line 31
    .line 32
    return-void
.end method

.method public static A7(II[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static B7(II[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static C7(ILjava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static D7(ILjava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static E7(I[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private F5(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :cond_2
    :goto_0
    return v1
.end method

.method public static F7(I[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static G7(I[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static H7(I[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static I7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static J7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static K7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static L7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static M7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method static synthetic N4(Lcom/kongzue/dialogx/dialogs/h;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/dialogs/h;->E2:F

    .line 2
    .line 3
    return p0
.end method

.method public static N7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method static synthetic O4(Lcom/kongzue/dialogx/dialogs/h;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/h;->E2:F

    .line 2
    .line 3
    return p1
.end method

.method public static O7(Ljava/lang/CharSequence;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method static synthetic P4(Lcom/kongzue/dialogx/dialogs/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static P7(Ljava/lang/CharSequence;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method static synthetic Q4(Lcom/kongzue/dialogx/dialogs/h;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/dialogs/h;->F2:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static Q7(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method static synthetic R4(Lcom/kongzue/dialogx/dialogs/h;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/dialogs/h;->F2:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static R7(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method static synthetic S4(Lcom/kongzue/dialogx/dialogs/h;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/h;->G2:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public static S7(Ljava/lang/CharSequence;[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method static synthetic T4(Lcom/kongzue/dialogx/dialogs/h;[I)[I
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->G2:[I

    .line 2
    .line 3
    return-object p1
.end method

.method public static T7(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method static synthetic U4(Lcom/kongzue/dialogx/dialogs/h;)[Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/h;->H2:[Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public static U7(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method static synthetic V4(Lcom/kongzue/dialogx/dialogs/h;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->H2:[Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p1
.end method

.method public static V7(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static W7(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static X7(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static Y7(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static Z4()Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static Z7(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static a5(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->n7(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static a8(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static b5(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->c6(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static b8(Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static c8([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static d8([Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static varargs e8([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static f8([Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static g8(IILjava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->x6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static h8(IILjava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->x6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static i8(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->x6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static j8(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->x6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static k8(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->x6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static l8(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->x6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static m8(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->x6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static n8(Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/h;->x6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static w7(IILjava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static x7(IILjava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static y7(II[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static z7(II[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/h;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/h;->t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/h;->V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/g;->D4()Lcom/kongzue/dialogx/dialogs/g;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method


# virtual methods
.method public bridge synthetic A3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->R5(I)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->t7(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public A5()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->G2:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public varargs A6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic B3(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->S5(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic B4(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->u7(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public B5()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public B6(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic C2(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->W4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic C3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->U5(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->v7(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public C5()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/h;->n2:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->k()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1
    return v1
.end method

.method public C6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Y:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic D2(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->X4(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->W5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public D5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/h;->D2:Z

    .line 2
    .line 3
    return v0
.end method

.method public D6(F)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    float-to-int p1, p1

    .line 2
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic E2()Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->Y4()Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic E3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->X5(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public E5(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->t2:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public E6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->d6(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F6(I)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->B:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic G3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->a6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public G5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/h;->r2:Z

    .line 2
    .line 3
    return v0
.end method

.method public G6(I)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic H3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->b6(Z)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public H5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public H6()Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->MULTIPLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->h6(Z)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->c5(I)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->c6(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public I5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
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

.method public I6()Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->NONE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public bridge synthetic J2()Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->d5()Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->d6(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public J5()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/kongzue/dialogx/dialogs/h$d;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/h$d;-><init>(Lcom/kongzue/dialogx/dialogs/h;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public J6(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic K3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->e6(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public K5()Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public K6(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
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
    return-object p0
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->p7(I)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->f6(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L5(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
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

.method public L6(ILcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
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
    return-object p0
.end method

.method public bridge synthetic M3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->g6(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public M5(Z)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/h;->n2:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public M6(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic N3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->h6(Z)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public N5(Z)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/h;->D2:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public N6(Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
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
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->i6(J)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public O5(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public O6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public P5(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public P6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    return-object p0
.end method

.method protected Q0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/g;->K2()V

    .line 2
    .line 3
    .line 4
    return-void
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
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->j6(J)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Q5(Z)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/g;->M:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public Q6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->Z:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->b2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
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

.method public R5(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public R6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public S2()Lcom/kongzue/dialogx/dialogs/g$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic S3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->k6(Z)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public S5(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public S6(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->T:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic T3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->o6(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public T5(ILcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public T6(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->W:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->p6(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public U5(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public U6(Lcom/kongzue/dialogx/interfaces/u;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/u<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->w2:Lcom/kongzue/dialogx/interfaces/u;

    .line 2
    .line 3
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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->q6(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public V5(Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public V6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->v2:Lcom/kongzue/dialogx/interfaces/x;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->B6(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public W4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public W5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public W6(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic X3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->C6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public X4(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public X5(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public X6(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->E6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Y4()Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/h;->p7(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public Y5(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p0:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public Y6(ILcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->F6(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Z5(Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public Z6(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->G6(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public a7(Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic b4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->J6(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b6(Z)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public b7(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
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

.method public bridge synthetic c4(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->K6(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c5(I)Lcom/kongzue/dialogx/dialogs/h;
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

.method public c6(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->N:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c7(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
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

.method public bridge synthetic d4(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->M6(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d5()Lcom/kongzue/dialogx/dialogs/h;
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

.method public d6(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/h;
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

.method public d7(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->b1:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/g;->d2:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->O6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs e5([I)Lcom/kongzue/dialogx/dialogs/h;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget v2, p1, v1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->t2:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object p0
.end method

.method public e6(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public e7(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->V1:Lcom/kongzue/dialogx/util/TextInfo;

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

.method public bridge synthetic f4(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->P6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs f5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->t2:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "DialogX: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->n()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " .disableMenu("

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ")\u6267\u884c\u5931\u8d25\uff0c\u8bf7\u5148\u521d\u59cb\u5316\u83dc\u5355\u9879 menuList"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-object p0
.end method

.method public f6(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public f7(F)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs g5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->t2:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "DialogX: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->n()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " .disableMenu("

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ")\u6267\u884c\u5931\u8d25\uff0c\u8bf7\u5148\u521d\u59cb\u5316\u83dc\u5355\u9879 menuList"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-object p0
.end method

.method public g6(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/g;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->S:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public g7(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->R6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs h5([I)Lcom/kongzue/dialogx/dialogs/h;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget v2, p1, v1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->t2:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object p0
.end method

.method public h6(Z)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h7(IIII)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public i3()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/g;->p1:F

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic i4(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->S6(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs i5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->t2:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "DialogX: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->n()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " .enableMenu("

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ")\u6267\u884c\u5931\u8d25\uff0c\u8bf7\u5148\u521d\u59cb\u5316\u83dc\u5355\u9879 menuList"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-object p0
.end method

.method public i6(J)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method

.method public i7(I)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->SINGLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->T6(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs j5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->t2:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "DialogX: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->n()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " .enableMenu("

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ")\u6267\u884c\u5931\u8d25\uff0c\u8bf7\u5148\u521d\u59cb\u5316\u83dc\u5355\u9879 menuList"

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-object p0
.end method

.method public j6(J)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public j7(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->MULTIPLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public bridge synthetic k4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->W6(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k5(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->C2:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->C2:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public k6(Z)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public k7([I)Lcom/kongzue/dialogx/dialogs/h;
    .locals 4

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->MULTIPLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    .line 21
    aget v2, p1, v1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 39
    .line 40
    .line 41
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

.method public bridge synthetic l4(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->X6(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public l5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->C2:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public l6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->C2:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public l7(Z)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/h;->r2:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic m4(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->Z6(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public m5()Lcom/kongzue/dialogx/util/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->u2:Lcom/kongzue/dialogx/util/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public varargs m6([I)Lcom/kongzue/dialogx/dialogs/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->C2:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->C2:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget v2, p1, v1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->C2:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public m7()Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->SINGLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->q2:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->b7(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n5()Lcom/kongzue/dialogx/interfaces/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/n<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->x2:Lcom/kongzue/dialogx/interfaces/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public n6(Lcom/kongzue/dialogx/util/k;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->u2:Lcom/kongzue/dialogx/util/k;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public n7(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
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

.method public bridge synthetic o4(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->c7(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public o6(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public o7(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic p3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->H5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p5()Landroid/widget/BaseAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public p6(I)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public p7(I)Lcom/kongzue/dialogx/dialogs/h;
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

.method public bridge synthetic q4(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->e7(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q5()Lcom/kongzue/dialogx/interfaces/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/m<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->s2:Lcom/kongzue/dialogx/interfaces/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public q6(I)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public q7(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic r3(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->I5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->f7(F)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r5()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->z2:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/kongzue/dialogx/DialogX;->u:Lcom/kongzue/dialogx/util/TextInfo;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public r6(Lcom/kongzue/dialogx/interfaces/n;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/n<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->x2:Lcom/kongzue/dialogx/interfaces/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public r7(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->X:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected s0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->g:Landroid/view/ViewGroup;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->C5()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 29
    .line 30
    iget v3, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->f2:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->e:Lcom/kongzue/dialogx/interfaces/c0;

    .line 42
    .line 43
    invoke-interface {v0, v2}, Lcom/kongzue/dialogx/interfaces/c0;->b(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->c(Z)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v3, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v3, v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->d(Z)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    .line 84
    const/4 v3, 0x1

    .line 85
    :goto_0
    if-nez v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    sget v0, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_menu_split_divider:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    sget v0, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_menu_split_divider_night:I

    .line 97
    .line 98
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_4

    .line 103
    .line 104
    new-instance v4, Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    sget v7, Lcom/kongzue/dialogx/R$style;->DialogXCompatThemeDark:I

    .line 115
    .line 116
    invoke-direct {v4, v5, v6, v7}, Lcom/kongzue/dialogx/util/views/DialogListView;-><init>(Lcom/kongzue/dialogx/interfaces/e;Landroid/content/Context;I)V

    .line 117
    .line 118
    .line 119
    iput-object v4, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    new-instance v4, Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-direct {v4, v5, v6}, Lcom/kongzue/dialogx/util/views/DialogListView;-><init>(Lcom/kongzue/dialogx/interfaces/e;Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    iput-object v4, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 136
    .line 137
    :goto_2
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 138
    .line 139
    const/4 v5, 0x2

    .line 140
    invoke-virtual {v4, v5}, Landroid/view/View;->setOverScrollMode(I)V

    .line 141
    .line 142
    .line 143
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 162
    .line 163
    new-instance v3, Lcom/kongzue/dialogx/dialogs/h$a;

    .line 164
    .line 165
    invoke-direct {v3, p0}, Lcom/kongzue/dialogx/dialogs/h$a;-><init>(Lcom/kongzue/dialogx/dialogs/h;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3}, Lcom/kongzue/dialogx/util/views/DialogListView;->d(Lcom/kongzue/dialogx/interfaces/d;)Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 172
    .line 173
    new-instance v3, Lcom/kongzue/dialogx/dialogs/h$b;

    .line 174
    .line 175
    invoke-direct {v3, p0}, Lcom/kongzue/dialogx/dialogs/h$b;-><init>(Lcom/kongzue/dialogx/dialogs/h;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-eqz v0, :cond_5

    .line 188
    .line 189
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->e(ZIIZ)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_5

    .line 200
    .line 201
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 202
    .line 203
    sget v1, Lcom/kongzue/dialogx/R$color;->empty:I

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 206
    .line 207
    .line 208
    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 209
    .line 210
    const/4 v1, -0x1

    .line 211
    const/4 v2, -0x2

    .line 212
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/g$e;->g:Landroid/view/ViewGroup;

    .line 220
    .line 221
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 222
    .line 223
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 227
    .line 228
    .line 229
    :cond_6
    return-void
.end method

.method public bridge synthetic s4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->g7(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s5()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    return v0
.end method

.method public s6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public s7(I)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic t3()Lcom/kongzue/dialogx/dialogs/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->K5()Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kongzue/dialogx/dialogs/h;->h7(IIII)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public t5()Lcom/kongzue/dialogx/interfaces/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g;->c2:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    check-cast v0, Lcom/kongzue/dialogx/interfaces/w;

    .line 4
    .line 5
    return-object v0
.end method

.method public t6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public t7(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/h;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public bridge synthetic u3(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/h;->L5(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic u4(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->n7(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u5()Lcom/kongzue/dialogx/interfaces/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/u<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->w2:Lcom/kongzue/dialogx/interfaces/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public u6([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public u7(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->q1:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic v4(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->o7(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public v5()Lcom/kongzue/dialogx/interfaces/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->v2:Lcom/kongzue/dialogx/interfaces/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public v6(Landroid/widget/BaseAdapter;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public v7(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic w3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->O5(I)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->p7(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public w5()Lcom/kongzue/dialogx/interfaces/SELECT_MODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->p2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    return-object v0
.end method

.method public w6(Lcom/kongzue/dialogx/interfaces/m;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/m<",
            "Lcom/kongzue/dialogx/dialogs/h;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->s2:Lcom/kongzue/dialogx/interfaces/m;

    .line 2
    .line 3
    return-object p0
.end method

.method public x0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/kongzue/dialogx/util/l;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/h;->m2:Lcom/kongzue/dialogx/dialogs/h;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2, v3}, Lcom/kongzue/dialogx/util/l;-><init>(Lcom/kongzue/dialogx/dialogs/h;Landroid/content/Context;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 54
    .line 55
    if-eq v0, v1, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/h;->r2:Z

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    new-instance v1, Lcom/kongzue/dialogx/dialogs/h$c;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/h$c;-><init>(Lcom/kongzue/dialogx/dialogs/h;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->u2:Lcom/kongzue/dialogx/util/k;

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v0, v2, v3}, Lcom/kongzue/dialogx/util/k;->a(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->y2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/h;->u2:Lcom/kongzue/dialogx/util/k;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/k;->f()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 114
    .line 115
    .line 116
    :cond_6
    invoke-super {p0}, Lcom/kongzue/dialogx/dialogs/g;->x0()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public bridge synthetic x3(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->P5(I)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->q7(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x5()[Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->H2:[Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public x6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public bridge synthetic y3(Z)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->Q5(Z)Lcom/kongzue/dialogx/dialogs/h;

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
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->r7(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 2
    .line 3
    return v0
.end method

.method public y6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->z2:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic z4(I)Lcom/kongzue/dialogx/dialogs/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/h;->s7(I)Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public z5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/h;->o2:I

    .line 2
    .line 3
    return v0
.end method

.method public varargs z6([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/h;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->B2:Ljava/util/List;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h;->A2:Landroid/widget/BaseAdapter;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/h;->J5()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
