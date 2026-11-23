.class Lcom/join/mgps/wrapper/SystemUiHider/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/wrapper/SystemUiHider/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/wrapper/SystemUiHider/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/wrapper/SystemUiHider/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vis"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/wrapper/SystemUiHider/c;->i(Lcom/join/mgps/wrapper/SystemUiHider/c;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/2addr p1, v0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-interface {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/c;->h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->b:Landroid/view/View;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/wrapper/SystemUiHider/c;->j(Lcom/join/mgps/wrapper/SystemUiHider/c;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-interface {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$b;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/c;->h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method
