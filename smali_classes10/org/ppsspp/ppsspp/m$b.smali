.class Lorg/ppsspp/ppsspp/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ppsspp/ppsspp/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/ppsspp/ppsspp/m;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/m$b;->b:Lorg/ppsspp/ppsspp/m;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/m$b;->b:Lorg/ppsspp/ppsspp/m;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/ppsspp/ppsspp/m;->a(Lorg/ppsspp/ppsspp/m;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    aget-object p2, v0, p2

    .line 8
    .line 9
    iget-object v0, p0, Lorg/ppsspp/ppsspp/m$b;->b:Lorg/ppsspp/ppsspp/m;

    .line 10
    .line 11
    invoke-static {v0, p2}, Lorg/ppsspp/ppsspp/m;->b(Lorg/ppsspp/ppsspp/m;Ljava/lang/String;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lorg/ppsspp/ppsspp/m$b;->b:Lorg/ppsspp/ppsspp/m;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lorg/ppsspp/ppsspp/m;->c(Lorg/ppsspp/ppsspp/m;Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/ppsspp/ppsspp/m$b;->b:Lorg/ppsspp/ppsspp/m;

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/ppsspp/ppsspp/m;->g()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lorg/ppsspp/ppsspp/m$b;->b:Lorg/ppsspp/ppsspp/m;

    .line 39
    .line 40
    invoke-static {p1}, Lorg/ppsspp/ppsspp/m;->d(Lorg/ppsspp/ppsspp/m;)Lorg/ppsspp/ppsspp/m$c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lorg/ppsspp/ppsspp/m$b;->b:Lorg/ppsspp/ppsspp/m;

    .line 47
    .line 48
    invoke-static {p1}, Lorg/ppsspp/ppsspp/m;->d(Lorg/ppsspp/ppsspp/m;)Lorg/ppsspp/ppsspp/m$c;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1, p2}, Lorg/ppsspp/ppsspp/m$c;->a(Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method
