.class Lcom/join/mgps/wrapper/SystemUiHider/c$a;
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
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

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
            "visibility"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/c;->h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/wrapper/SystemUiHider/a;->d:Lcom/join/mgps/wrapper/SystemUiHider/a$b;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-interface {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/a$b;->onVisibilityChange(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/c$a;->b:Lcom/join/mgps/wrapper/SystemUiHider/c;

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/join/mgps/wrapper/SystemUiHider/c;->h(Lcom/join/mgps/wrapper/SystemUiHider/c;Z)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
