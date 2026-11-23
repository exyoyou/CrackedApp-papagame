.class final Lcom/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/l$e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private final c:Lcom/f$c;

.field private d:Landroidx/fragment/app/Fragment;


# direct methods
.method private constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/f$g;->a:Lcom/f$k;

    .line 4
    iput-object p2, p0, Lcom/f$g;->b:Lcom/f$e;

    .line 5
    iput-object p3, p0, Lcom/f$g;->c:Lcom/f$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Lcom/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/f$g;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/fragment/app/Fragment;)Lgb/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/f$g;->c(Landroidx/fragment/app/Fragment;)Lcom/f$g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Lcom/l$e;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/f$g;->d:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    const-class v1, Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ldagger/internal/k;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/f$h;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/f$g;->a:Lcom/f$k;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/f$g;->b:Lcom/f$e;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/f$g;->c:Lcom/f$c;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/f$g;->d:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/f$h;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public bridge synthetic build()Leb/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/f$g;->b()Lcom/l$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c(Landroidx/fragment/app/Fragment;)Lcom/f$g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldagger/internal/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/f$g;->d:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    return-object p0
.end method
