.class Lcom/join/mgps/wrapper/SystemUiHider/c;
.super Lcom/join/mgps/wrapper/SystemUiHider/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private o:Landroid/view/View$OnSystemUiVisibilityChangeListener;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "anchorView",
            "flags"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/wrapper/SystemUiHider/b;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->m:Z

    .line 6
    .line 7
    new-instance p2, Lcom/join/mgps/wrapper/SystemUiHider/c$a;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Lcom/join/mgps/wrapper/SystemUiHider/c$a;-><init>(Lcom/join/mgps/wrapper/SystemUiHider/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->n:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 13
    .line 14
    new-instance p2, Lcom/join/mgps/wrapper/SystemUiHider/c$b;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/join/mgps/wrapper/SystemUiHider/c$b;-><init>(Lcom/join/mgps/wrapper/SystemUiHider/c;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->o:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->j:I

    .line 23
    .line 24
    iput p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->k:I

    .line 25
    .line 26
    iput p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->l:I

    .line 27
    .line 28
    iget p2, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->c:I

    .line 29
    .line 30
    and-int/lit8 p3, p2, 0x2

    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    or-int/lit16 p1, p1, 0x404

    .line 35
    .line 36
    iput p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->k:I

    .line 37
    .line 38
    :cond_0
    and-int/lit8 p1, p2, 0x6

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    iput p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->l:I

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->m:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/join/mgps/wrapper/SystemUiHider/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/join/mgps/wrapper/SystemUiHider/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->j:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->k:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    .line 9
    .line 10
    iget v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->k:I

    .line 11
    .line 12
    or-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    or-int/lit16 v1, v1, 0x200

    .line 15
    .line 16
    or-int/lit16 v1, v1, 0x1000

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->n:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c;->j:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
