.class public Lcom/kongzue/dialogx/dialogs/b;
.super Lcom/kongzue/dialogx/dialogs/a;
.source "SourceFile"


# static fields
.field public static final E2:I = 0x64


# instance fields
.field private A2:F

.field private B2:J

.field private C2:[I

.field private D2:[Ljava/lang/CharSequence;

.field protected k2:Lcom/kongzue/dialogx/dialogs/b;

.field protected l2:I

.field protected m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

.field protected n2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected o2:Z

.field protected p2:Lcom/kongzue/dialogx/interfaces/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/m<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;"
        }
    .end annotation
.end field

.field protected q2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected r2:Lcom/kongzue/dialogx/util/k;

.field protected s2:Lcom/kongzue/dialogx/interfaces/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;"
        }
    .end annotation
.end field

.field protected t2:Lcom/kongzue/dialogx/interfaces/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/u<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;"
        }
    .end annotation
.end field

.field protected u2:Lcom/kongzue/dialogx/interfaces/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/n<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;"
        }
    .end annotation
.end field

.field protected v2:Lcom/kongzue/dialogx/util/views/DialogListView;

.field protected w2:Landroid/widget/BaseAdapter;

.field protected x2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected y2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected z2:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 8
    .line 9
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->NONE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/b;->o2:Z

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->q2:Ljava/util/Map;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/b;->z2:Z

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/kongzue/dialogx/dialogs/b;->B2:J

    .line 29
    .line 30
    return-void
.end method

.method public static A7([Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static B7(IILjava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->R5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static C7(IILjava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->R5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static D7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->R5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static E7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
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
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->R5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static F7(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->R5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static G7(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
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
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->R5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static H7(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->R5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static I7(Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->R5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static R6(IILjava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static S6(IILjava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static T6(II[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static U6(II[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private V4([I)[Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    array-length v1, p1

    .line 7
    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_1
    if-nez p1, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    goto :goto_2

    .line 14
    :cond_1
    array-length v3, p1

    .line 15
    :goto_2
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    aget v3, p1, v2

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    aput-object v3, v1, v2

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    return-object v1
.end method

.method public static V6(II[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static W6(II[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static X6(ILjava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private Y4(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

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

.method public static Y6(ILjava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static Z6(I[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static a7(I[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static b7(I[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static c7(I[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static d7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method static synthetic e4(Lcom/kongzue/dialogx/dialogs/b;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/dialogs/b;->A2:F

    .line 2
    .line 3
    return p0
.end method

.method public static e7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
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
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method static synthetic f4(Lcom/kongzue/dialogx/dialogs/b;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/b;->A2:F

    .line 2
    .line 3
    return p1
.end method

.method public static f7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method static synthetic g4(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method static synthetic h4(Lcom/kongzue/dialogx/dialogs/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static h7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method static synthetic i4(Lcom/kongzue/dialogx/dialogs/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/dialogs/b;->B2:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static i7(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method static synthetic j4(Lcom/kongzue/dialogx/dialogs/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/dialogs/b;->B2:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static j7(Ljava/lang/CharSequence;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method static synthetic k4(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static k7(Ljava/lang/CharSequence;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method static synthetic l4(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n0(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static l7(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method static synthetic m4(Lcom/kongzue/dialogx/dialogs/b;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/b;->C2:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public static m7(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method static synthetic n4(Lcom/kongzue/dialogx/dialogs/b;[I)[I
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->C2:[I

    .line 2
    .line 3
    return-object p1
.end method

.method public static n7(Ljava/lang/CharSequence;[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method static synthetic o4(Lcom/kongzue/dialogx/dialogs/b;)[Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/b;->D2:[Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public static o7(Ljava/lang/CharSequence;[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method static synthetic p4(Lcom/kongzue/dialogx/dialogs/b;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->D2:[Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p1
.end method

.method public static p7(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static q7(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
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
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static r7(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static s7(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static t4()Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static t7(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static u4(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->I6(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static u7(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static v4(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->w5(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static v7(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static w7(Ljava/util/List;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static x7([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static y7([Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/b;->p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static varargs z7([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/b;->O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->R3()Lcom/kongzue/dialogx/dialogs/a;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public bridge synthetic A3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->t6(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs A4([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->q2:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->n()Ljava/lang/String;

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

.method public A5(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public A6(I)Lcom/kongzue/dialogx/dialogs/b;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic B3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->v6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs B4([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->q2:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->n()Ljava/lang/String;

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

.method public B5(Z)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public B6(IIII)Lcom/kongzue/dialogx/dialogs/b;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public C2()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kongzue/dialogx/dialogs/a;->C2()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic C3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->w6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs C4([I)Lcom/kongzue/dialogx/dialogs/b;
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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->q2:Ljava/util/Map;

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

.method public C5(J)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-object p0
.end method

.method public C6(Z)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/a;->q1:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public D2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic D3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->y6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs D4([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->q2:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->n()Ljava/lang/String;

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

.method public D5(J)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-object p0
.end method

.method public D6(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->SINGLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public bridge synthetic E3(F)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->z6(F)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs E4([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->q2:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->n()Ljava/lang/String;

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

.method public E5(Z)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public E6(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->MULTIPLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->x5(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic F2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->a5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic F3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->A6(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F4()Lcom/kongzue/dialogx/interfaces/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    check-cast v0, Lcom/kongzue/dialogx/interfaces/w;

    .line 4
    .line 5
    return-object v0
.end method

.method public F5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->y2:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public F6([I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 4

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->MULTIPLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public bridge synthetic G3(IIII)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kongzue/dialogx/dialogs/b;->B6(IIII)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public G4(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->y2:Ljava/util/List;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->y2:Ljava/util/List;

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

.method public varargs G5([I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->y2:Ljava/util/List;

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->y2:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->y2:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public G6(Z)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/b;->o2:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic H2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->b5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic H3(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->C6(Z)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public H4()Ljava/util/List;
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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->y2:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public H5(Lcom/kongzue/dialogx/util/k;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->r2:Lcom/kongzue/dialogx/util/k;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public H6()Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->SINGLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->B5(Z)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic I3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->I6(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public I4()Lcom/kongzue/dialogx/interfaces/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/n<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->u2:Lcom/kongzue/dialogx/interfaces/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public I5(I)Lcom/kongzue/dialogx/dialogs/b;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->U:Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public I6(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic J2()Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->d5()Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic J3(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->J6(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public J4()Ljava/util/List;
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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public J5(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public J6(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic K2(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->e5(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic K3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->K6(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public K4()Landroid/widget/BaseAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public K5(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->y:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public K6(I)Lcom/kongzue/dialogx/dialogs/b;
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

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->K6(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic L2(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->f5(Z)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic L3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->L6(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L4()Lcom/kongzue/dialogx/interfaces/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/m<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->p2:Lcom/kongzue/dialogx/interfaces/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public L5(Lcom/kongzue/dialogx/interfaces/n;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/n<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->u2:Lcom/kongzue/dialogx/interfaces/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public L6(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic M2(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->h5(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic M3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->M6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public M4()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->L1:Lcom/kongzue/dialogx/util/TextInfo;

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

.method public M5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public M6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic N2(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->i5(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic N3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->N6(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public N4()Lcom/kongzue/dialogx/interfaces/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/u<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->t2:Lcom/kongzue/dialogx/interfaces/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public N5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public N6(I)Lcom/kongzue/dialogx/dialogs/b;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic O2(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->j5(Z)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic O3(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->O6(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public O4()Lcom/kongzue/dialogx/interfaces/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->s2:Lcom/kongzue/dialogx/interfaces/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public O5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public O6(Landroid/graphics/Bitmap;)Lcom/kongzue/dialogx/dialogs/b;
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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public bridge synthetic P2(F)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->k5(F)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic P3(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->P6(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public P4()Lcom/kongzue/dialogx/interfaces/SELECT_MODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    return-object v0
.end method

.method public P5(Landroid/widget/BaseAdapter;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public P6(Landroid/graphics/drawable/Drawable;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->i1:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected Q0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic Q3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->Q6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Q4()[Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->D2:[Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public Q5(Lcom/kongzue/dialogx/interfaces/m;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/m<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->p2:Lcom/kongzue/dialogx/interfaces/m;

    .line 2
    .line 3
    return-object p0
.end method

.method public Q6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic R2(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->l5(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public R4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 2
    .line 3
    return v0
.end method

.method public R5(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public bridge synthetic S2(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->m5(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public S4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 2
    .line 3
    return v0
.end method

.method public S5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->L1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic T1(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->q4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic T2(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->o5(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public T4()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->C2:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public varargs T5([I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->V4([I)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public bridge synthetic U1(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->r4(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic U2(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->q5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public U4()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public varargs U5([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic V1()Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->s4()Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic V2(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->r5(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs V5([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public W4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/b;->z2:Z

    .line 2
    .line 3
    return v0
.end method

.method public W5(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic X2(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->u5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public X4(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->q2:Ljava/util/Map;

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

.method public X5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic Y2(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->v5(Z)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Y5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic Z1(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->x4(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic Z2(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->w5(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Z4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/b;->o2:Z

    .line 2
    .line 3
    return v0
.end method

.method public Z5(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->B:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic a2()Lcom/kongzue/dialogx/dialogs/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->y4()Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic a3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->x5(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public a6(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic b3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->y5(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b5(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
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

.method public b6()Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->MULTIPLE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public c2()I
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

.method public bridge synthetic c3(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->z5(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c5()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

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
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b$d;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/b$d;-><init>(Lcom/kongzue/dialogx/dialogs/b;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c6()Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/interfaces/SELECT_MODE;->NONE:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->m2:Lcom/kongzue/dialogx/interfaces/SELECT_MODE;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/b;->l2:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->n2:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public d2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic d3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->A5(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d5()Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public d6(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic e3(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->B5(Z)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e5(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
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

.method public e6(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public f0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->p0:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

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
    sget-object v0, Lcom/kongzue/dialogx/dialogs/a;->j2:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

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

.method public f2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic f3(J)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->C5(J)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f5(Z)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/a;->S:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public f6(ILcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic g3(J)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->D5(J)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g5(Z)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/b;->z2:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g6(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public h2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic h3(Z)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->E5(Z)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h5(I)Lcom/kongzue/dialogx/dialogs/b;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public h6(Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public i2()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

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

.method public bridge synthetic i3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->I5(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i5(I)Lcom/kongzue/dialogx/dialogs/b;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public i6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public j2()Lcom/kongzue/dialogx/dialogs/a$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->e2:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic j3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->J5(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public j5(Z)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/a;->b1:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public j6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    return-object p0
.end method

.method public bridge synthetic k3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->K5(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k5(F)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 2
    .line 3
    return-object p0
.end method

.method public k6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    return-object p0
.end method

.method public l2()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic l3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->W5(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public l5(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public l6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public m2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic m3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->X5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public m5(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public m6(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Z:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
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

.method public n2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic n3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->Y5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n5(ILcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public n6(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->Y:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public o2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic o3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->Z5(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o5(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public o6(Lcom/kongzue/dialogx/interfaces/u;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/u<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->t2:Lcom/kongzue/dialogx/interfaces/u;

    .line 2
    .line 3
    return-object p0
.end method

.method public p2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->v1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic p3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->a6(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p5(Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public p6(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/b;->s2:Lcom/kongzue/dialogx/interfaces/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public q2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->Q:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic q3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->d6(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q4(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->O:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public q5(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public q6(I)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public r2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->V1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic r3(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->e6(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r4(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public r5(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public r6(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->X:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    return-object p0
.end method

.method protected s0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->l:Landroid/view/ViewGroup;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->C2()Z

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 29
    .line 30
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 31
    .line 32
    float-to-int v3, v3

    .line 33
    invoke-virtual {v0, v3}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->i(I)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/a;->b2:F

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    cmpl-float v0, v0, v3

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->e2:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 46
    .line 47
    invoke-interface {v0, v2}, Lcom/kongzue/dialogx/interfaces/c0;->b(Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v0, v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->c(Z)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v3, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v3, v4}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->d(Z)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 88
    const/4 v3, 0x1

    .line 89
    :goto_0
    if-nez v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    sget v0, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_menu_split_divider:I

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    sget v0, Lcom/kongzue/dialogx/R$drawable;->rect_dialogx_material_menu_split_divider_night:I

    .line 101
    .line 102
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_4

    .line 107
    .line 108
    new-instance v4, Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    sget v7, Lcom/kongzue/dialogx/R$style;->DialogXCompatThemeDark:I

    .line 119
    .line 120
    invoke-direct {v4, v5, v6, v7}, Lcom/kongzue/dialogx/util/views/DialogListView;-><init>(Lcom/kongzue/dialogx/interfaces/e;Landroid/content/Context;I)V

    .line 121
    .line 122
    .line 123
    iput-object v4, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    new-instance v4, Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-direct {v4, v5, v6}, Lcom/kongzue/dialogx/util/views/DialogListView;-><init>(Lcom/kongzue/dialogx/interfaces/e;Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    iput-object v4, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 140
    .line 141
    :goto_2
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 142
    .line 143
    const-string v5, "ScrollController"

    .line 144
    .line 145
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 149
    .line 150
    const/4 v5, 0x2

    .line 151
    invoke-virtual {v4, v5}, Landroid/view/View;->setOverScrollMode(I)V

    .line 152
    .line 153
    .line 154
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 177
    .line 178
    iput-object v3, v0, Lcom/kongzue/dialogx/dialogs/a$e;->h:Lcom/kongzue/dialogx/interfaces/c0;

    .line 179
    .line 180
    new-instance v0, Lcom/kongzue/dialogx/dialogs/b$a;

    .line 181
    .line 182
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/b$a;-><init>(Lcom/kongzue/dialogx/dialogs/b;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v0}, Lcom/kongzue/dialogx/util/views/DialogListView;->d(Lcom/kongzue/dialogx/interfaces/d;)Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 189
    .line 190
    new-instance v3, Lcom/kongzue/dialogx/dialogs/b$b;

    .line 191
    .line 192
    invoke-direct {v3, p0}, Lcom/kongzue/dialogx/dialogs/b$b;-><init>(Lcom/kongzue/dialogx/dialogs/b;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_5

    .line 205
    .line 206
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->f()Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$b;->e(ZIIZ)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_5

    .line 217
    .line 218
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 219
    .line 220
    sget v1, Lcom/kongzue/dialogx/R$color;->empty:I

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 223
    .line 224
    .line 225
    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 226
    .line 227
    const/4 v1, -0x1

    .line 228
    const/4 v2, -0x2

    .line 229
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a$e;->l:Landroid/view/ViewGroup;

    .line 237
    .line 238
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 239
    .line 240
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 244
    .line 245
    .line 246
    :cond_6
    return-void
.end method

.method public s2()Lcom/kongzue/dialogx/interfaces/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->Z:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic s3(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->g6(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s4()Lcom/kongzue/dialogx/dialogs/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/b;->K6(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public s5(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->P:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public s6(ILcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->S(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->X:Lcom/kongzue/dialogx/interfaces/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public t2()Lcom/kongzue/dialogx/interfaces/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->Y:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic t3(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->i6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public t5(Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->V:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public t6(Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->X:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public u2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic u3(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->j6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u5(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public u6(Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->X:Lcom/kongzue/dialogx/interfaces/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public v2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic v3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->l6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public v5(Z)Lcom/kongzue/dialogx/dialogs/b;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->p0:Lcom/kongzue/dialogx/interfaces/BaseDialog$BOOLEAN;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public v6(Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public w2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic w3(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->m6(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected w4()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public w5(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->M:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->c5()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public w6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/t<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->X:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    return-object p0
.end method

.method public x0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/kongzue/dialogx/util/c;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->x2:Ljava/util/List;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2, v3}, Lcom/kongzue/dialogx/util/c;-><init>(Lcom/kongzue/dialogx/dialogs/b;Landroid/content/Context;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/b;->w2:Landroid/widget/BaseAdapter;

    .line 54
    .line 55
    if-eq v0, v1, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

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
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/b;->o2:Z

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    new-instance v1, Lcom/kongzue/dialogx/dialogs/b$c;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/b$c;-><init>(Lcom/kongzue/dialogx/dialogs/b;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->r2:Lcom/kongzue/dialogx/util/k;

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v0, v2, v3}, Lcom/kongzue/dialogx/util/k;->a(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->v2:Lcom/kongzue/dialogx/util/views/DialogListView;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/b;->r2:Lcom/kongzue/dialogx/util/k;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/kongzue/dialogx/util/k;->f()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 112
    .line 113
    .line 114
    :cond_6
    invoke-super {p0}, Lcom/kongzue/dialogx/dialogs/a;->x0()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public x2()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->N:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic x3(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->n6(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x4(I)Lcom/kongzue/dialogx/dialogs/b;
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

.method public x5(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/b;
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

.method public x6(Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/w;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/w<",
            "Lcom/kongzue/dialogx/dialogs/b;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->R:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/a;->X:Lcom/kongzue/dialogx/interfaces/a;

    .line 4
    .line 5
    return-object p0
.end method

.method public bridge synthetic y3(I)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/b;->q6(I)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y4()Lcom/kongzue/dialogx/dialogs/b;
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

.method public y5(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public y6(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->a2:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public z2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a;->r1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic z3(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/b;->r6(ILcom/kongzue/dialogx/interfaces/t;)Lcom/kongzue/dialogx/dialogs/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs z4([I)Lcom/kongzue/dialogx/dialogs/b;
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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/b;->q2:Ljava/util/Map;

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

.method public z5(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/a;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a;->c2:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/b;->k2:Lcom/kongzue/dialogx/dialogs/b;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public z6(F)Lcom/kongzue/dialogx/dialogs/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/a;->f1:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/b;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
