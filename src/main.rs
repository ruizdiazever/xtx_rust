use surf;
use tokio;

#[tokio::main]
async fn main() {
    println!("Hello, world!");
    let result = scraping().await;
}


async fn scraping() {
    let body = surf::get("https://www.rust-lang.org/").await.unwrap().body_string().await.unwrap();
    println!("{}", body);
}