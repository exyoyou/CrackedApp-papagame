.class public final Lorg/androidannotations/api/sharedpreferences/c;
.super Lorg/androidannotations/api/sharedpreferences/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/androidannotations/api/sharedpreferences/e<",
        "TT;>;>",
        "Lorg/androidannotations/api/sharedpreferences/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/androidannotations/api/sharedpreferences/a;-><init>(Lorg/androidannotations/api/sharedpreferences/e;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Z)Lorg/androidannotations/api/sharedpreferences/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/a;->a:Lorg/androidannotations/api/sharedpreferences/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/e;->f()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/a;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lorg/androidannotations/api/sharedpreferences/a;->a:Lorg/androidannotations/api/sharedpreferences/e;

    .line 13
    .line 14
    return-object p1
.end method
