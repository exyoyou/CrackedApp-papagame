.class Lcom/join/mgps/lib/statusbar/b$a;
.super Lcom/join/mgps/lib/statusbar/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/lib/statusbar/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Lcom/join/mgps/lib/statusbar/b$c;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/lib/statusbar/b$e;-><init>(Lcom/join/mgps/lib/statusbar/b$a;)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lcom/join/mgps/lib/statusbar/b$d;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/join/mgps/lib/statusbar/b$d;-><init>(Lcom/join/mgps/lib/statusbar/b$a;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/join/mgps/lib/statusbar/b$a;->a:Lcom/join/mgps/lib/statusbar/b$c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Window;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "lightStatusBar"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/lib/statusbar/b$e;->a(Landroid/view/Window;Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/lib/statusbar/b$a;->a:Lcom/join/mgps/lib/statusbar/b$c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/join/mgps/lib/statusbar/b$c;->a(Landroid/view/Window;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
