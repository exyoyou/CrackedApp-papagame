.class Lcom/join/android/app/component/album/MyIconActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/album/lib/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyIconActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/MyIconActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyIconActivity;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    .line 2
    .line 3
    check-cast p1, Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->access$002(Lcom/join/android/app/component/album/MyIconActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/android/app/component/album/MyIconActivity;->access$100(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/join/android/app/component/album/a;->h()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/android/app/component/album/MyIconActivity;->access$000(Lcom/join/android/app/component/album/MyIconActivity;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "ALL"

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/android/app/component/album/lib/a;

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/join/android/app/component/album/MyIconActivity;->access$202(Lcom/join/android/app/component/album/MyIconActivity;Lcom/join/android/app/component/album/lib/a;)Lcom/join/android/app/component/album/lib/a;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$a;->a:Lcom/join/android/app/component/album/MyIconActivity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/android/app/component/album/MyIconActivity;->access$300(Lcom/join/android/app/component/album/MyIconActivity;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
