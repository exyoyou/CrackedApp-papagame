.class public Lcom/kongzue/dialogx/dialogs/i;
.super Lcom/kongzue/dialogx/interfaces/BaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/dialogs/i$h;
    }
.end annotation


# static fields
.field public static k2:J = -0x1L

.field public static l2:J = -0x1L


# instance fields
.field protected L1:Lcom/kongzue/dialogx/util/k;

.field protected M:Lcom/kongzue/dialogx/dialogs/i;

.field protected N:Z

.field protected O:Lcom/kongzue/dialogx/interfaces/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation
.end field

.field protected P:Lcom/kongzue/dialogx/interfaces/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation
.end field

.field protected Q:Lcom/kongzue/dialogx/interfaces/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation
.end field

.field protected R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected R1:I

.field protected S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected T:Z

.field protected U:Lcom/kongzue/dialogx/dialogs/i$h;

.field protected V:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected V1:Lcom/kongzue/dialogx/util/g;

.field protected W:Z

.field protected X:Lcom/kongzue/dialogx/interfaces/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation
.end field

.field protected Y:Lcom/kongzue/dialogx/interfaces/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/u<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation
.end field

.field protected Z:I

.field private a2:I

.field protected b1:Lcom/kongzue/dialogx/util/TextInfo;

.field public b2:Z

.field public c2:I

.field private d2:Landroid/view/ViewTreeObserver;

.field private e2:Landroid/view/ViewTreeObserver$OnDrawListener;

.field protected f1:Z

.field protected f2:Lcom/kongzue/dialogx/util/n;

.field protected g2:I

.field protected h2:Z

.field protected i1:F

.field private i2:Z

.field protected j2:Z

.field protected l1:Lcom/kongzue/dialogx/interfaces/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation
.end field

.field protected p0:I

.field protected p1:Lcom/kongzue/dialogx/interfaces/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation
.end field

.field protected q1:Lcom/kongzue/dialogx/interfaces/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kongzue/dialogx/interfaces/m<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation
.end field

.field protected r1:I

.field protected v1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 4
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 7
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 9
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 10
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 12
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 13
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 14
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 15
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 120
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 122
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 123
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 125
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 127
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 128
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 129
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 130
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 131
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 132
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 133
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 134
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/i;->X1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/i;

    .line 135
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 17
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 19
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 20
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 22
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 24
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 25
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 26
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 27
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 28
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 29
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 30
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 32
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/i;->X1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/i;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 137
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 139
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 140
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 142
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 143
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 144
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 145
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 147
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 148
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 149
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 150
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 151
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/i;->X1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/i;

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 153
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;[Ljava/lang/CharSequence;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 35
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 37
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 38
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 40
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 42
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 43
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 45
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 46
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 47
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 48
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 50
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/i;->X1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/i;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 156
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 158
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 159
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 160
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 161
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 162
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 163
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 164
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 165
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 166
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 167
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 168
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 169
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 170
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/i;->X1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/i;

    .line 171
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 172
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iput-object p3, p0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 104
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 106
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 107
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 109
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 111
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 112
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 114
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 115
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 116
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 117
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 118
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 53
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 55
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 56
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 58
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 60
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 61
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 62
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 63
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 64
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 65
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 66
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 175
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 177
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 178
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 179
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 180
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 181
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 182
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 183
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 184
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 185
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 186
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 187
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 188
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 190
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/CharSequence;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 70
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 72
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 73
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 75
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 77
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 78
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 79
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 80
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 81
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 82
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 83
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 85
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 193
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 195
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 196
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 197
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 198
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 199
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 200
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 201
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 203
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 204
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 205
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 206
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 208
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;-><init>()V

    .line 87
    iput-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 89
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 90
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 92
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 94
    sget v2, Lcom/kongzue/dialogx/DialogX;->Q:I

    int-to-float v2, v2

    iput v2, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 95
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 97
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 98
    new-instance v2, Lcom/kongzue/dialogx/util/g;

    invoke-direct {v2}, Lcom/kongzue/dialogx/util/g;-><init>()V

    iput-object v2, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 99
    iput-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->b2:Z

    .line 100
    iput v0, p0, Lcom/kongzue/dialogx/dialogs/i;->c2:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 102
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic A1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B1(Lcom/kongzue/dialogx/dialogs/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->H0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D1(Lcom/kongzue/dialogx/dialogs/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic E1(Lcom/kongzue/dialogx/dialogs/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic F1(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G1(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H1(Lcom/kongzue/dialogx/dialogs/i;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/i;->q2()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic I1(Lcom/kongzue/dialogx/dialogs/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic J1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic L1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method private L2([I)[Ljava/lang/String;
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

.method static synthetic M1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/View;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s(Landroid/view/View;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic N1(Lcom/kongzue/dialogx/dialogs/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic O1(Lcom/kongzue/dialogx/dialogs/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic P1(Lcom/kongzue/dialogx/dialogs/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic Q1(Lcom/kongzue/dialogx/dialogs/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic R1(Lcom/kongzue/dialogx/dialogs/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/dialogs/i;->i2:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic S1(Lcom/kongzue/dialogx/dialogs/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/i;->i2:Z

    .line 2
    .line 3
    return p1
.end method

.method public static S3(Landroid/view/View;Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/i;-><init>(Landroid/view/View;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic T0(Lcom/kongzue/dialogx/dialogs/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/i;->Z2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T1(Lcom/kongzue/dialogx/dialogs/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method public static T3(Landroid/view/View;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/i;-><init>(Landroid/view/View;Ljava/util/List;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic U0(Lcom/kongzue/dialogx/dialogs/i;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->d2:Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic U1(Lcom/kongzue/dialogx/dialogs/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E:Z

    .line 2
    .line 3
    return p1
.end method

.method public static U3(Landroid/view/View;[Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/i;-><init>(Landroid/view/View;[Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic V0(Lcom/kongzue/dialogx/dialogs/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V1(Lcom/kongzue/dialogx/dialogs/i;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static V3(Landroid/view/View;[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/i;-><init>(Landroid/view/View;[Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic W0(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->d2:Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    return-object p1
.end method

.method public static W3(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic X0(Lcom/kongzue/dialogx/dialogs/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method public static X3(Ljava/util/List;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/i;-><init>(Ljava/util/List;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic Y0(Lcom/kongzue/dialogx/dialogs/i;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static varargs Y3([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i;-><init>([Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic Z0(Lcom/kongzue/dialogx/dialogs/i;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->J0(Landroidx/lifecycle/Lifecycle$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Z2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->A2()Lcom/kongzue/dialogx/util/g;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/kongzue/dialogx/dialogs/i;->h2:Z

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/g;->c()F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    cmpl-float v1, v1, v2

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/g;->c()F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/g;->d()F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    cmpl-float v1, v1, v2

    .line 96
    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/g;->d()F

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    int-to-float v1, v1

    .line 123
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/g;->b()F

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    cmpl-float v1, v1, v2

    .line 128
    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/g;->b()F

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    float-to-int v0, v0

    .line 138
    const/4 v2, -0x2

    .line 139
    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_0
    return-void
.end method

.method public static Z3([Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/dialogs/i;-><init>([Ljava/lang/CharSequence;Lcom/kongzue/dialogx/interfaces/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic a1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static a2()Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/i;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static varargs a4([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i;-><init>([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method static synthetic b1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static b2(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/dialogs/i;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kongzue/dialogx/dialogs/i;->M3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/i;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private b3(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d1(Lcom/kongzue/dialogx/dialogs/i;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->G(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic e1(Lcom/kongzue/dialogx/dialogs/i;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->w(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/i;->b3(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h1(Lcom/kongzue/dialogx/dialogs/i;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->D(Ljava/lang/Float;)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic i1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m1(Lcom/kongzue/dialogx/dialogs/i;)Lcom/kongzue/dialogx/interfaces/DialogXStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->Z(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o1(Lcom/kongzue/dialogx/dialogs/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/i;->a2:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic p1(Lcom/kongzue/dialogx/dialogs/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q1(Lcom/kongzue/dialogx/dialogs/i;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/dialogs/i;->e2:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private q2()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/high16 v1, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/high16 v2, -0x80000000

    .line 48
    .line 49
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 58
    .line 59
    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    return v0
.end method

.method static synthetic r1(Lcom/kongzue/dialogx/dialogs/i;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s1(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/ViewTreeObserver$OnDrawListener;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->e2:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic t1(Lcom/kongzue/dialogx/dialogs/i;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u1(Lcom/kongzue/dialogx/dialogs/i;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v1(Lcom/kongzue/dialogx/dialogs/i;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic y1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z1(Lcom/kongzue/dialogx/dialogs/i;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->v:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->e2:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->d2:Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, v1, v0}, Lcom/kongzue/dialogx/dialogs/i;->b3(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->e2:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 34
    .line 35
    invoke-direct {p0, v0, v1}, Lcom/kongzue/dialogx/dialogs/i;->b3(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->e2:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->p(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 50
    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->d:Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->d:Landroid/widget/RelativeLayout;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method protected A2()Lcom/kongzue/dialogx/util/g;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/kongzue/dialogx/util/g;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kongzue/dialogx/util/g;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/kongzue/dialogx/util/g;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/kongzue/dialogx/util/g;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/kongzue/dialogx/util/g;->c()F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    float-to-int v3, v3

    .line 52
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/kongzue/dialogx/util/g;->d()F

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    float-to-int v4, v4

    .line 59
    iget v5, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 60
    .line 61
    const/4 v6, -0x1

    .line 62
    const/4 v7, 0x0

    .line 63
    if-eq v5, v6, :cond_19

    .line 64
    .line 65
    const/16 v5, 0x10

    .line 66
    .line 67
    invoke-virtual {p0, v5}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    div-int/lit8 v5, v5, 0x2

    .line 82
    .line 83
    add-int/2addr v5, v4

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    div-int/lit8 v8, v8, 0x2

    .line 89
    .line 90
    sub-int/2addr v5, v8

    .line 91
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 v5, 0x0

    .line 97
    :goto_0
    const/4 v8, 0x1

    .line 98
    invoke-virtual {p0, v8}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-lez v8, :cond_2

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    div-int/lit8 v8, v8, 0x2

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    div-int/lit8 v9, v9, 0x2

    .line 125
    .line 126
    sub-int/2addr v8, v9

    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const/4 v8, 0x0

    .line 129
    :goto_1
    add-int/2addr v8, v3

    .line 130
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    const/4 v8, 0x0

    .line 136
    :goto_2
    const/16 v9, 0x11

    .line 137
    .line 138
    invoke-virtual {p0, v9}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-eqz v9, :cond_5

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-lez v5, :cond_4

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    div-int/lit8 v5, v5, 0x2

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    div-int/lit8 v8, v8, 0x2

    .line 165
    .line 166
    sub-int/2addr v5, v8

    .line 167
    goto :goto_3

    .line 168
    :cond_4
    const/4 v5, 0x0

    .line 169
    :goto_3
    add-int/2addr v5, v3

    .line 170
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    div-int/lit8 v5, v5, 0x2

    .line 183
    .line 184
    add-int/2addr v5, v4

    .line 185
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    div-int/lit8 v9, v9, 0x2

    .line 190
    .line 191
    sub-int/2addr v5, v9

    .line 192
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    :cond_5
    iget-boolean v9, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    .line 197
    .line 198
    const/16 v10, 0x50

    .line 199
    .line 200
    const/4 v11, 0x5

    .line 201
    const/4 v12, 0x3

    .line 202
    const/16 v13, 0x30

    .line 203
    .line 204
    if-eqz v9, :cond_c

    .line 205
    .line 206
    invoke-virtual {p0, v13}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-eqz v9, :cond_7

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    add-int/2addr v5, v4

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    sub-int/2addr v5, v9

    .line 226
    if-nez v8, :cond_7

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-lez v8, :cond_6

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    div-int/lit8 v8, v8, 0x2

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    div-int/lit8 v9, v9, 0x2

    .line 249
    .line 250
    sub-int/2addr v8, v9

    .line 251
    goto :goto_4

    .line 252
    :cond_6
    const/4 v8, 0x0

    .line 253
    :goto_4
    add-int/2addr v8, v3

    .line 254
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    :cond_7
    invoke-virtual {p0, v12}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    if-eqz v9, :cond_8

    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    add-int/2addr v8, v3

    .line 273
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 274
    .line 275
    .line 276
    move-result v9

    .line 277
    sub-int/2addr v8, v9

    .line 278
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-nez v5, :cond_8

    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    div-int/lit8 v5, v5, 0x2

    .line 293
    .line 294
    add-int/2addr v5, v4

    .line 295
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    div-int/lit8 v9, v9, 0x2

    .line 300
    .line 301
    sub-int/2addr v5, v9

    .line 302
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    :cond_8
    invoke-virtual {p0, v11}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    if-eqz v9, :cond_a

    .line 311
    .line 312
    if-nez v5, :cond_9

    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    div-int/lit8 v5, v5, 0x2

    .line 323
    .line 324
    add-int/2addr v5, v4

    .line 325
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 326
    .line 327
    .line 328
    move-result v8

    .line 329
    div-int/lit8 v8, v8, 0x2

    .line 330
    .line 331
    sub-int/2addr v5, v8

    .line 332
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    :cond_9
    move v8, v3

    .line 337
    :cond_a
    invoke-virtual {p0, v10}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    if-eqz v9, :cond_12

    .line 342
    .line 343
    if-nez v8, :cond_13

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    if-lez v5, :cond_b

    .line 350
    .line 351
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    div-int/lit8 v5, v5, 0x2

    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    div-int/lit8 v8, v8, 0x2

    .line 366
    .line 367
    sub-int/2addr v5, v8

    .line 368
    goto :goto_5

    .line 369
    :cond_b
    const/4 v5, 0x0

    .line 370
    :goto_5
    add-int/2addr v3, v5

    .line 371
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    goto/16 :goto_8

    .line 376
    .line 377
    :cond_c
    invoke-virtual {p0, v13}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 378
    .line 379
    .line 380
    move-result v9

    .line 381
    if-eqz v9, :cond_e

    .line 382
    .line 383
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    sub-int v5, v4, v5

    .line 388
    .line 389
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    if-nez v8, :cond_e

    .line 394
    .line 395
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 396
    .line 397
    .line 398
    move-result v8

    .line 399
    if-lez v8, :cond_d

    .line 400
    .line 401
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    div-int/lit8 v8, v8, 0x2

    .line 410
    .line 411
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    div-int/lit8 v9, v9, 0x2

    .line 416
    .line 417
    sub-int/2addr v8, v9

    .line 418
    goto :goto_6

    .line 419
    :cond_d
    const/4 v8, 0x0

    .line 420
    :goto_6
    add-int/2addr v8, v3

    .line 421
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    :cond_e
    invoke-virtual {p0, v12}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    if-eqz v9, :cond_f

    .line 430
    .line 431
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 432
    .line 433
    .line 434
    move-result v8

    .line 435
    sub-int v8, v3, v8

    .line 436
    .line 437
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    if-nez v5, :cond_f

    .line 442
    .line 443
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    div-int/lit8 v5, v5, 0x2

    .line 452
    .line 453
    add-int/2addr v5, v4

    .line 454
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    div-int/lit8 v9, v9, 0x2

    .line 459
    .line 460
    sub-int/2addr v5, v9

    .line 461
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    :cond_f
    invoke-virtual {p0, v11}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 466
    .line 467
    .line 468
    move-result v9

    .line 469
    if-eqz v9, :cond_10

    .line 470
    .line 471
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 472
    .line 473
    .line 474
    move-result-object v8

    .line 475
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 476
    .line 477
    .line 478
    move-result v8

    .line 479
    add-int/2addr v8, v3

    .line 480
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 481
    .line 482
    .line 483
    move-result v8

    .line 484
    if-nez v5, :cond_10

    .line 485
    .line 486
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 491
    .line 492
    .line 493
    move-result v5

    .line 494
    div-int/lit8 v5, v5, 0x2

    .line 495
    .line 496
    add-int/2addr v5, v4

    .line 497
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    div-int/lit8 v9, v9, 0x2

    .line 502
    .line 503
    sub-int/2addr v5, v9

    .line 504
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    :cond_10
    invoke-virtual {p0, v10}, Lcom/kongzue/dialogx/dialogs/i;->P2(I)Z

    .line 509
    .line 510
    .line 511
    move-result v9

    .line 512
    if-eqz v9, :cond_12

    .line 513
    .line 514
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    add-int/2addr v4, v5

    .line 523
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 524
    .line 525
    .line 526
    move-result v4

    .line 527
    if-nez v8, :cond_13

    .line 528
    .line 529
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 530
    .line 531
    .line 532
    move-result v5

    .line 533
    if-lez v5, :cond_11

    .line 534
    .line 535
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    div-int/lit8 v5, v5, 0x2

    .line 544
    .line 545
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->M2()I

    .line 546
    .line 547
    .line 548
    move-result v8

    .line 549
    div-int/lit8 v8, v8, 0x2

    .line 550
    .line 551
    sub-int/2addr v5, v8

    .line 552
    goto :goto_7

    .line 553
    :cond_11
    const/4 v5, 0x0

    .line 554
    :goto_7
    add-int/2addr v3, v5

    .line 555
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 556
    .line 557
    .line 558
    move-result v8

    .line 559
    goto :goto_8

    .line 560
    :cond_12
    move v4, v5

    .line 561
    :cond_13
    :goto_8
    iget-boolean v3, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 562
    .line 563
    if-nez v3, :cond_18

    .line 564
    .line 565
    if-gez v8, :cond_14

    .line 566
    .line 567
    const/4 v8, 0x0

    .line 568
    :cond_14
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    add-int/2addr v3, v8

    .line 573
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaWidth()I

    .line 574
    .line 575
    .line 576
    move-result v5

    .line 577
    if-le v3, v5, :cond_15

    .line 578
    .line 579
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaWidth()I

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    sub-int/2addr v3, v5

    .line 588
    move v8, v3

    .line 589
    :cond_15
    if-gez v4, :cond_16

    .line 590
    .line 591
    goto :goto_9

    .line 592
    :cond_16
    move v7, v4

    .line 593
    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    add-int/2addr v3, v7

    .line 598
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaHeight()I

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    if-le v3, v4, :cond_17

    .line 603
    .line 604
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaHeight()I

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 609
    .line 610
    .line 611
    move-result v1

    .line 612
    sub-int v4, v2, v1

    .line 613
    .line 614
    goto :goto_a

    .line 615
    :cond_17
    move v4, v7

    .line 616
    :cond_18
    :goto_a
    int-to-float v1, v8

    .line 617
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/g;->i(F)Lcom/kongzue/dialogx/util/g;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    int-to-float v2, v4

    .line 622
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/g;->j(F)Lcom/kongzue/dialogx/util/g;

    .line 623
    .line 624
    .line 625
    goto :goto_d

    .line 626
    :cond_19
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    .line 627
    .line 628
    if-ne v3, v6, :cond_1a

    .line 629
    .line 630
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    :cond_1a
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 639
    .line 640
    invoke-virtual {v4}, Lcom/kongzue/dialogx/util/g;->c()F

    .line 641
    .line 642
    .line 643
    move-result v4

    .line 644
    float-to-int v4, v4

    .line 645
    iget-object v5, p0, Lcom/kongzue/dialogx/dialogs/i;->V1:Lcom/kongzue/dialogx/util/g;

    .line 646
    .line 647
    invoke-virtual {v5}, Lcom/kongzue/dialogx/util/g;->d()F

    .line 648
    .line 649
    .line 650
    move-result v5

    .line 651
    iget-boolean v8, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    .line 652
    .line 653
    if-eqz v8, :cond_1b

    .line 654
    .line 655
    const/4 v3, 0x0

    .line 656
    :cond_1b
    int-to-float v3, v3

    .line 657
    add-float/2addr v5, v3

    .line 658
    iget v3, p0, Lcom/kongzue/dialogx/dialogs/i;->g2:I

    .line 659
    .line 660
    int-to-float v3, v3

    .line 661
    add-float/2addr v5, v3

    .line 662
    float-to-int v3, v5

    .line 663
    iget-boolean v5, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 664
    .line 665
    if-nez v5, :cond_20

    .line 666
    .line 667
    if-gez v4, :cond_1c

    .line 668
    .line 669
    const/4 v4, 0x0

    .line 670
    :cond_1c
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 671
    .line 672
    .line 673
    move-result v5

    .line 674
    add-int/2addr v5, v4

    .line 675
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaWidth()I

    .line 676
    .line 677
    .line 678
    move-result v8

    .line 679
    if-le v5, v8, :cond_1d

    .line 680
    .line 681
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaWidth()I

    .line 682
    .line 683
    .line 684
    move-result v4

    .line 685
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 686
    .line 687
    .line 688
    move-result v5

    .line 689
    sub-int/2addr v4, v5

    .line 690
    :cond_1d
    if-gez v3, :cond_1e

    .line 691
    .line 692
    goto :goto_b

    .line 693
    :cond_1e
    move v7, v3

    .line 694
    :goto_b
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    add-int/2addr v3, v7

    .line 699
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaHeight()I

    .line 700
    .line 701
    .line 702
    move-result v5

    .line 703
    if-le v3, v5, :cond_1f

    .line 704
    .line 705
    invoke-virtual {v2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getUseAreaHeight()I

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    sub-int v3, v2, v1

    .line 714
    .line 715
    goto :goto_c

    .line 716
    :cond_1f
    move v3, v7

    .line 717
    :cond_20
    :goto_c
    int-to-float v1, v4

    .line 718
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/g;->i(F)Lcom/kongzue/dialogx/util/g;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    int-to-float v2, v3

    .line 723
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/g;->j(F)Lcom/kongzue/dialogx/util/g;

    .line 724
    .line 725
    .line 726
    :goto_d
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 727
    .line 728
    if-ne v1, v6, :cond_21

    .line 729
    .line 730
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    :cond_21
    iget v2, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    .line 739
    .line 740
    if-ne v2, v6, :cond_22

    .line 741
    .line 742
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    :cond_22
    int-to-float v1, v1

    .line 751
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/g;->h(F)Lcom/kongzue/dialogx/util/g;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    int-to-float v2, v2

    .line 756
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/util/g;->g(F)Lcom/kongzue/dialogx/util/g;

    .line 757
    .line 758
    .line 759
    return-object v0
.end method

.method public varargs A3([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public B2()Lcom/kongzue/dialogx/interfaces/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/m<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->q1:Lcom/kongzue/dialogx/interfaces/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public varargs B3([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public C2()Lcom/kongzue/dialogx/util/TextInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->b1:Lcom/kongzue/dialogx/util/TextInfo;

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

.method public C3(Z)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public D2()Lcom/kongzue/dialogx/interfaces/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p1:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public D3(Lcom/kongzue/dialogx/interfaces/p;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/p<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->p1:Lcom/kongzue/dialogx/interfaces/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public E2()Lcom/kongzue/dialogx/interfaces/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Q:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public E3(Lcom/kongzue/dialogx/interfaces/q;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/q<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->Q:Lcom/kongzue/dialogx/interfaces/q;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic F0(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/kongzue/dialogx/dialogs/i;->k3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public F2()Lcom/kongzue/dialogx/interfaces/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/u<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Y:Lcom/kongzue/dialogx/interfaces/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public F3(Lcom/kongzue/dialogx/interfaces/u;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/u<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->Y:Lcom/kongzue/dialogx/interfaces/u;

    .line 2
    .line 3
    return-object p0
.end method

.method public G2()Lcom/kongzue/dialogx/interfaces/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->X:Lcom/kongzue/dialogx/interfaces/x;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i$f;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i$f;-><init>(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public G3(Lcom/kongzue/dialogx/interfaces/x;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/x<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->X:Lcom/kongzue/dialogx/interfaces/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public H2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 2
    .line 3
    return v0
.end method

.method public H3(Z)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic I0(Z)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/i;->o3(Z)Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public I2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 2
    .line 3
    return v0
.end method

.method public I3(I)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/i;->r1:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public J2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/i;->a2:I

    .line 2
    .line 3
    return v0
.end method

.method public J3(F)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/i;->i1:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public K2()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget v1, p0, Lcom/kongzue/dialogx/dialogs/i;->a2:I

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/CharSequence;

    .line 15
    .line 16
    return-object v0
.end method

.method public K3(I)Lcom/kongzue/dialogx/dialogs/i;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic L0(I)Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/i;->O3(I)Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public L3(IIII)Lcom/kongzue/dialogx/dialogs/i;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public bridge synthetic M0()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->Q3()Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public M2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 2
    .line 3
    return v0
.end method

.method public M3(Lcom/kongzue/dialogx/interfaces/DialogXStyle;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->s:Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public N2()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->j2:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public N3(Lcom/kongzue/dialogx/DialogX$THEME;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 2
    .line 3
    return-object p0
.end method

.method public O2()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->j2:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i$h;->e()Lcom/kongzue/dialogx/interfaces/g;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i$g;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i$g;-><init>(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/i$h;->g(Landroid/view/animation/Animation;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->E0(Ljava/lang/Runnable;J)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public O3(I)Lcom/kongzue/dialogx/dialogs/i;
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

.method public P2(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public P3(I)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/i;->Z:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method protected Q0()V
    .locals 0

    .line 1
    return-void
.end method

.method public Q2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 2
    .line 3
    return v0
.end method

.method public Q3()Lcom/kongzue/dialogx/dialogs/i;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->j2:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/i$h;->e()Lcom/kongzue/dialogx/interfaces/g;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-object p0

    .line 85
    :cond_1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->e()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popmenu_material:I

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popmenu_material_dark:I

    .line 104
    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->c(Z)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->c(Z)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    :cond_3
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Lcom/kongzue/dialogx/dialogs/i$h;

    .line 154
    .line 155
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/i$h;-><init>(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->U:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 159
    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->O0(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    :goto_2
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->d2:Landroid/view/ViewTreeObserver;

    .line 193
    .line 194
    new-instance v1, Lcom/kongzue/dialogx/dialogs/i$a;

    .line 195
    .line 196
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/i$a;-><init>(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 197
    .line 198
    .line 199
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->e2:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    return-object p0
.end method

.method public R2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 2
    .line 3
    return v0
.end method

.method public R3(Landroid/app/Activity;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/i;->j2:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/i$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/i$h;->e()Lcom/kongzue/dialogx/interfaces/g;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/i$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-object p0

    .line 85
    :cond_1
    invoke-super {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->e()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popmenu_material:I

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    sget v0, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_popmenu_material_dark:I

    .line 104
    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->c(Z)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->j()Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$d;->c(Z)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    :cond_3
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Lcom/kongzue/dialogx/dialogs/i$h;

    .line 154
    .line 155
    invoke-direct {v1, p0, v0}, Lcom/kongzue/dialogx/dialogs/i$h;-><init>(Lcom/kongzue/dialogx/dialogs/i;Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    iput-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->U:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 159
    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    :goto_2
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_6

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->d2:Landroid/view/ViewTreeObserver;

    .line 193
    .line 194
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i$b;

    .line 195
    .line 196
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i$b;-><init>(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 197
    .line 198
    .line 199
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->e2:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    return-object p0
.end method

.method public S2(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

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

.method public T2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->f1:Z

    .line 2
    .line 3
    return v0
.end method

.method public U2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->W:Z

    .line 2
    .line 3
    return v0
.end method

.method public V2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->m:Lcom/kongzue/dialogx/interfaces/i;

    .line 2
    .line 3
    return-object p0
.end method

.method protected W1()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->V:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method protected W2(Lcom/kongzue/dialogx/dialogs/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected X1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->V:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->V:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->V:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public X2(Lcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
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

.method public Y1(Landroidx/lifecycle/LifecycleOwner;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->f(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method protected Y2(Lcom/kongzue/dialogx/dialogs/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Z1()Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/dialogs/i;->O3(I)Lcom/kongzue/dialogx/dialogs/i;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public a3()Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->clean()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public c2(I)Lcom/kongzue/dialogx/dialogs/i;
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

.method public c3(ILcom/kongzue/dialogx/interfaces/i;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kongzue/dialogx/interfaces/i<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
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

.method public d2()Lcom/kongzue/dialogx/dialogs/i;
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

.method public d3(I)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/dialogs/i;->Z2()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public e2()Lcom/kongzue/dialogx/dialogs/i;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

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
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "DialogX: "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->n()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " .disableAllMenu()\u6267\u884c\u5931\u8d25\uff0c\u8bf7\u5148\u521d\u59cb\u5316\u83dc\u5355\u9879 menuList"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-object p0
.end method

.method public e3(Z)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/i;->T:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public f0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public varargs f2([I)Lcom/kongzue/dialogx/dialogs/i;
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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

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

.method public f3(I)Lcom/kongzue/dialogx/dialogs/i;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public varargs g2([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->n()Ljava/lang/String;

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

.method public g3(I)Lcom/kongzue/dialogx/dialogs/i;
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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->i2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public varargs h2([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->n()Ljava/lang/String;

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

.method public h3(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/dialogs/i;->X1(Landroid/view/View;)Lcom/kongzue/dialogx/dialogs/i;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public i2()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kongzue/dialogx/dialogs/i;->i2:Z

    .line 3
    .line 4
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i$c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i$c;-><init>(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public i3(Z)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/dialogs/i;->N:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public j2()Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public j3(Lcom/kongzue/dialogx/interfaces/r;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/r<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public varargs k2([I)Lcom/kongzue/dialogx/dialogs/i;
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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

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

.method public k3(Ljava/lang/String;Ljava/lang/Object;)Lcom/kongzue/dialogx/dialogs/i;
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

.method public varargs l2([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->n()Ljava/lang/String;

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

.method public l3(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->g:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs m2([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->v1:Ljava/util/Map;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->n()Ljava/lang/String;

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

.method public m3(Lcom/kongzue/dialogx/interfaces/f;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->P:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->r:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->M:Lcom/kongzue/dialogx/dialogs/i;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 10
    .line 11
    .line 12
    :cond_0
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

.method public n2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R1:I

    .line 2
    .line 3
    return v0
.end method

.method public n3(Lcom/kongzue/dialogx/interfaces/g;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public o2()I
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

.method public o3(Z)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public p2()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->W1()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public p3(Z)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public q3(I)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public r2()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->O:Lcom/kongzue/dialogx/interfaces/r;

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

.method public r3(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->S:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public s2()Lcom/kongzue/dialogx/dialogs/i$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->U:Lcom/kongzue/dialogx/dialogs/i$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public varargs s3([I)Lcom/kongzue/dialogx/dialogs/i;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->S:Ljava/util/List;

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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->S:Ljava/util/List;

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
    iget-object v3, p0, Lcom/kongzue/dialogx/dialogs/i;->S:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public t2()Lcom/kongzue/dialogx/interfaces/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/f<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->P:Lcom/kongzue/dialogx/interfaces/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i$e;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i$e;-><init>(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public t3(Lcom/kongzue/dialogx/util/k;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->L1:Lcom/kongzue/dialogx/util/k;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public u2()Lcom/kongzue/dialogx/interfaces/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kongzue/dialogx/interfaces/g<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->l1:Lcom/kongzue/dialogx/interfaces/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public u3(Ljava/util/List;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
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
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public v2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/dialogs/i;->p0:I

    .line 2
    .line 3
    return v0
.end method

.method public v3([Ljava/lang/CharSequence;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public w2(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->S:Ljava/util/List;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->S:Ljava/util/List;

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

.method public w3([Ljava/lang/String;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public x0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->s2()Lcom/kongzue/dialogx/dialogs/i$h;

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
    new-instance v0, Lcom/kongzue/dialogx/dialogs/i$d;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/i$d;-><init>(Lcom/kongzue/dialogx/dialogs/i;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public x2()Ljava/util/List;
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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->S:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public x3(Lcom/kongzue/dialogx/interfaces/m;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kongzue/dialogx/interfaces/m<",
            "Lcom/kongzue/dialogx/dialogs/i;",
            ">;)",
            "Lcom/kongzue/dialogx/dialogs/i;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->q1:Lcom/kongzue/dialogx/interfaces/m;

    .line 2
    .line 3
    return-object p0
.end method

.method public y2()Lcom/kongzue/dialogx/util/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->L1:Lcom/kongzue/dialogx/util/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public y3(Lcom/kongzue/dialogx/util/TextInfo;)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->b1:Lcom/kongzue/dialogx/util/TextInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public z2()Ljava/util/List;
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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public varargs z3([I)Lcom/kongzue/dialogx/dialogs/i;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/dialogs/i;->L2([I)[Ljava/lang/String;

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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->R:Ljava/util/List;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/i;->f2:Lcom/kongzue/dialogx/util/n;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/i;->x0()V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
