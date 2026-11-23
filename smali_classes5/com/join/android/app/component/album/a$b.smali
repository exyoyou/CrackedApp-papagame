.class Lcom/join/android/app/component/album/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/album/lib/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/a;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/album/a$b;->a:Lcom/join/android/app/component/album/a;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/adapter/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/album/a$b;->a:Lcom/join/android/app/component/album/a;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/component/album/a;->a(Lcom/join/android/app/component/album/a;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    move-object v2, p1

    .line 10
    check-cast v2, Ljava/util/List;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/album/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/android/app/component/album/a$b;->a:Lcom/join/android/app/component/album/a;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/android/app/component/album/a;->b(Lcom/join/android/app/component/album/a;)Landroid/widget/ListView;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/android/app/component/album/a$b;->a:Lcom/join/android/app/component/album/a;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/android/app/component/album/a;->b(Lcom/join/android/app/component/album/a;)Landroid/widget/ListView;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/join/android/app/component/album/a$b$a;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1}, Lcom/join/android/app/component/album/a$b$a;-><init>(Lcom/join/android/app/component/album/a$b;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
