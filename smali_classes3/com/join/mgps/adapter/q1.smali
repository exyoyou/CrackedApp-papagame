.class public Lcom/join/mgps/adapter/q1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/q1;->e:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/join/mgps/adapter/q1;->f:I

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/join/mgps/adapter/q1;->g:I

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/join/mgps/adapter/q1;->h:I

    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    iput v0, p0, Lcom/join/mgps/adapter/q1;->i:I

    .line 18
    .line 19
    const/4 v0, 0x6

    .line 20
    iput v0, p0, Lcom/join/mgps/adapter/q1;->j:I

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    iput v0, p0, Lcom/join/mgps/adapter/q1;->k:I

    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    iput v0, p0, Lcom/join/mgps/adapter/q1;->l:I

    .line 28
    .line 29
    const/16 v0, 0x9

    .line 30
    .line 31
    iput v0, p0, Lcom/join/mgps/adapter/q1;->m:I

    .line 32
    .line 33
    const/16 v0, 0xa

    .line 34
    .line 35
    iput v0, p0, Lcom/join/mgps/adapter/q1;->n:I

    .line 36
    .line 37
    const/16 v0, 0xb

    .line 38
    .line 39
    iput v0, p0, Lcom/join/mgps/adapter/q1;->o:I

    .line 40
    .line 41
    const/16 v0, 0xc

    .line 42
    .line 43
    iput v0, p0, Lcom/join/mgps/adapter/q1;->p:I

    .line 44
    .line 45
    const/16 v0, 0xd

    .line 46
    .line 47
    iput v0, p0, Lcom/join/mgps/adapter/q1;->q:I

    .line 48
    .line 49
    const/16 v0, 0xe

    .line 50
    .line 51
    iput v0, p0, Lcom/join/mgps/adapter/q1;->r:I

    .line 52
    .line 53
    const/16 v0, 0xf

    .line 54
    .line 55
    iput v0, p0, Lcom/join/mgps/adapter/q1;->s:I

    .line 56
    .line 57
    const/16 v0, 0x10

    .line 58
    .line 59
    iput v0, p0, Lcom/join/mgps/adapter/q1;->t:I

    .line 60
    .line 61
    const/16 v0, 0x11

    .line 62
    .line 63
    iput v0, p0, Lcom/join/mgps/adapter/q1;->u:I

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/q1;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
