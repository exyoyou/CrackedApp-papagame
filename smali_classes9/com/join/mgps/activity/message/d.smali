.class public final Lcom/join/mgps/activity/message/d;
.super Lcom/join/mgps/activity/message/c;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/d$v;
    }
.end annotation


# instance fields
.field private final B:Lzc/c;

.field private C:Landroid/view/View;

.field private final D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/message/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/message/d;->B:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/message/d;->D:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic f0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h0(Lcom/join/mgps/activity/message/d;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->Y(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/activity/message/c;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 11
    .line 12
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method static synthetic j0(Lcom/join/mgps/activity/message/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k0(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->a0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l0(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->U(Lcom/join/mgps/dto/CommentResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/activity/message/d;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o0(Lcom/join/mgps/activity/message/d;Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/message/c;->X(Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r0(Lcom/join/mgps/activity/message/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->N(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u0(Lcom/join/mgps/activity/message/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/message/c;->T(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->c0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x0(Lcom/join/mgps/activity/message/d;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/message/c;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static y0()Lcom/join/mgps/activity/message/d$v;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$v;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/message/d$v;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method M()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$o;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method N(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$g;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$r;-><init>(Lcom/join/mgps/activity/message/d;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method P()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/message/d$m;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/message/d$m;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method Q()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/message/d$j;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/message/d$j;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method R()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$d;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method S()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$b;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method T(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datas2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$g;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$u;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$u;-><init>(Lcom/join/mgps/activity/message/d;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method U(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$h;-><init>(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/CommentResponse;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "bean",
            "b"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/message/d$i;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string p3, ""

    .line 9
    .line 10
    invoke-static {p3, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method W()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$t;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method X(Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "trim",
            "bean"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/message/d$l;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/message/d$l;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method Y(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$p;-><init>(Lcom/join/mgps/activity/message/d;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method a0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$g;-><init>(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method b0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$s;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method c0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$a;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method e0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$q;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/d;->D:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/d;->C:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/d;->B:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/message/d;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/message/d;->C:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d028e

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/join/mgps/activity/message/d;->C:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/d;->C:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/message/d;->C:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->g:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->i:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->j:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->p:Landroid/widget/Button;

    .line 22
    .line 23
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a174a

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const v0, 0x7f0a10d7

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 22
    .line 23
    const v0, 0x7f0a0e8e

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/mgps/customview/XListView2;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 33
    .line 34
    const v0, 0x7f0a0f95

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->g:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v0, 0x7f0a0f92

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    const v0, 0x7f0a0a66

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->i:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const v0, 0x7f0a134f

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->j:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a1508

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/Button;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/join/mgps/activity/message/c;->p:Landroid/widget/Button;

    .line 88
    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    new-instance v0, Lcom/join/mgps/activity/message/d$k;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$k;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->c:Landroid/widget/LinearLayout;

    .line 100
    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    new-instance v0, Lcom/join/mgps/activity/message/d$n;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$n;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->afterViews()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/message/d;->B:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/d;->D:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$c;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/message/d$e;-><init>(Lcom/join/mgps/activity/message/d;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/message/d$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/message/d$f;-><init>(Lcom/join/mgps/activity/message/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
